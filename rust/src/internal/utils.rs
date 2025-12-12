use anyhow::anyhow;
use rquickjs::function::Args;
use rquickjs::{Array, CatchResultExt, Ctx, Filter, Function, IntoJs, Object, Promise};
use serde::de::DeserializeOwned;
use serde::Serialize;
use serde_json::{Map, Value};
use std::collections::HashMap;
use std::fmt::Debug;

/// Convert a `serde_json::Value` into a Boa `JsValue`
pub fn json_value_to_js<'a>(value: &Value, ctx: Ctx<'a>) -> rquickjs::Result<rquickjs::Value<'a>> {
    match value {
        Value::Null => Ok(rquickjs::Value::new_null(ctx)),
        Value::Bool(b) => Ok(rquickjs::Value::new_bool(ctx, *b)),
        Value::Number(n) => {
            if let Some(i) = n.as_i64() {
                Ok(rquickjs::Value::new_int(ctx, i as i32))
            } else if let Some(f) = n.as_f64() {
                Ok(rquickjs::Value::new_float(ctx, f))
            } else {
                Ok(rquickjs::Value::new_null(ctx)) // fallback (rare)
            }
        }
        Value::String(s) => {
            let sts = rquickjs::String::from_str(ctx, s.as_str())?;
            Ok(rquickjs::Value::from_string(sts))
        }
        Value::Array(arr) => {
            let mut js_arr = Vec::<rquickjs::Value>::with_capacity(arr.len());
            for item in arr.iter() {
                let js_val = json_value_to_js(item, ctx.clone())?;
                js_arr.push(js_val);
            }
            js_arr.into_js(&ctx)
        }
        Value::Object(obj) => {
            let mut js_obj = HashMap::<String, rquickjs::Value>::with_capacity(obj.len());

            for (key, val) in obj {
                let js_val = json_value_to_js(val, ctx.clone())?;
                js_obj.insert(key.clone(), js_val);
            }

            js_obj.into_js(&ctx)
        }
    }
}

/// Convert a `Value` into a `serde_json::Value`
pub fn js_value_to_json<'a>(value: rquickjs::Value<'a>, ctx: Ctx<'a>) -> anyhow::Result<Value> {
    if value.is_null() || value.is_undefined() {
        return Ok(Value::Null);
    }

    if let Some(b) = value.as_bool() {
        return Ok(Value::Bool(b));
    }

    if value.is_int() {
        let num = serde_json::Number::from(value.as_int().unwrap_or(0));
        return Ok(Value::Number(num));
    }

    if value.is_float() {
        let num = serde_json::Number::from_f64(value.as_float().unwrap_or(0.0))
            .ok_or(anyhow!("[js_value_to_json][as_number] Invalid number"))?;
        return Ok(Value::Number(num));
    }

    if let Some(s) = value.as_string() {
        let s = s.to_string()?;
        return Ok(Value::String(s));
    }

    if value.is_object() {
        let obj = value.into_object().ok_or(anyhow!("Not an object"))?;

        // Array?
        if obj.is_array() {
            let obj: Array = Array::from_value(obj.into_value())
                .catch(&ctx)
                .map_err(|e| anyhow!("[js_value_to_json][Array::from_value] {e}"))?;
            let length = obj.len();
            let mut json_arr = Vec::<Value>::with_capacity(length);

            for i in 0..length {
                let item = obj.get(i).unwrap_or(rquickjs::Value::new_null(ctx.clone()));
                let item_json = js_value_to_json(item, ctx.clone())?;
                json_arr.push(item_json);
            }

            return Ok(Value::Array(json_arr));
        }

        // Regular Object
        let mut map = Map::<String, Value>::new();

        for key in obj.own_keys::<rquickjs::String>(Filter::default()) {
            let key = key?;
            let v_js = obj
                .get(key.clone())
                .unwrap_or(rquickjs::Value::new_null(ctx.clone()));
            let v_json = js_value_to_json(v_js, ctx.clone())?;

            map.insert(key.clone().to_string()?, v_json);
        }

        return Ok(Value::Object(map));
    }

    // Fallback for unsupported JS types: functions, symbols, etc.
    Ok(Value::Null)
}

pub async fn js_invoke_async_method_to_json<'b, T, R>(
    ctx: Ctx<'b>,
    endpoint_name: &'b str,
    name: &'b str,
    args: &[T],
) -> anyhow::Result<Option<R>>
where
    T: Serialize + Debug,
    R: DeserializeOwned + Debug,
{
    let global = ctx.globals();
    let plugin_instance: Object<'b> = global
        .get("pluginInstance")
        .catch(&ctx)
        .map_err(|e| anyhow!("[js_invoke_async_method_to_json][global.pluginInstance] {e}"))?;
    let core_val: Object<'b> = plugin_instance
        .get(endpoint_name)
        .catch(&ctx)
        .map_err(|e| {
            anyhow!("[js_invoke_async_method_to_json][global.pluginInstance.{endpoint_name}] {e}")
        })?;
    let js_fn: Function<'b> = core_val.get(name).catch(&ctx).map_err(|e| {
        anyhow!(
            "[js_invoke_async_method_to_json][global.pluginInstance.{endpoint_name}.{name}()] {e}"
        )
    })?;
    let mut args_js = Args::new(ctx.clone(), args.len() as usize);

    args_js
        .this(core_val)
        .catch(&ctx)
        .map_err(|e| anyhow!("[js_invoke_async_method_to_json][global.pluginInstance.{endpoint_name}.{name}.args.this] {e}"))?;

    for arg in args.iter() {
        let arg_value = serde_json::to_value(arg).map_err(|e| {
            anyhow!("[js_invoke_async_method_to_json][global.pluginInstance.{endpoint_name}.{name}.args.{:?}] {e}", arg)
        })?;
        let arg_js = json_value_to_js(&arg_value, ctx.clone())
            .catch(&ctx)
            .map_err(|e| anyhow!("[js_invoke_async_method_to_json][json_value_to_js] {e}"))?;
        args_js
            .push_arg(arg_js)
            .catch(&ctx)
            .map_err(|e| anyhow!("[js_invoke_async_method_to_json][Args::push_arg] {e}"))?;
    }

    let result_promise: Promise = js_fn.call_arg(args_js).catch(&ctx).map_err(|e| {
        anyhow!(
            "[js_invoke_async_method_to_json][pluginInstance.{endpoint_name}.{name}() result] {e}"
        )
    })?;

    let result_future: rquickjs::Value = result_promise
        .into_future()
        .await
        .catch(&ctx)
        .map_err(|e| anyhow!("[js_invoke_async_method_to_json][pluginInstance.{endpoint_name}.{name}() future]{e}"))?;

    let value = js_value_to_json(result_future, ctx.clone())?;

    if value.is_null() {
        return Ok(None);
    }

    Ok(Some(serde_json::from_value::<R>(value).map_err(|e| {
        anyhow!(
            "[js_invoke_async_method_to_json][pluginInstance.{endpoint_name}.{name}() toJson] {e}"
        )
    })?))
}

pub fn js_invoke_method_to_json<'b, T, R>(
    ctx: Ctx<'b>,
    endpoint_name: &'b str,
    name: &'b str,
    args: &[T],
) -> anyhow::Result<Option<R>>
where
    T: Serialize + Debug,
    R: DeserializeOwned,
{
    let global = ctx.globals();
    let plugin_instance: Object<'b> = global
        .get("pluginInstance")
        .catch(&ctx)
        .map_err(|e| anyhow!("[js_invoke_method_to_json][pluginInstance] {e}"))?;
    let core_val: Object<'b> = plugin_instance
        .get(endpoint_name)
        .catch(&ctx)
        .map_err(|e| anyhow!("[js_invoke_method_to_json][pluginInstance.{endpoint_name}] {e}"))?;
    let js_fn: Function<'b> = core_val.get(name).catch(&ctx).map_err(|e| {
        anyhow!("[js_invoke_method_to_json][pluginInstance.{endpoint_name}.{name}] {e}")
    })?;
    let mut args_js = Args::new(ctx.clone(), args.len() as usize);

    args_js.this(core_val).catch(&ctx).map_err(|e| {
        anyhow!("[js_invoke_method_to_json][pluginInstance.{endpoint_name}.{name}.args.this] {e}")
    })?;

    for arg in args.iter() {
        let arg_value = serde_json::to_value(arg).map_err(|e| anyhow!("{e}"))?;
        let arg_js = json_value_to_js(&arg_value, ctx.clone())
            .catch(&ctx)
            .map_err(|e| anyhow!("[js_invoke_method_to_json][pluginInstance.{endpoint_name}.{name}.args.{:?}] {e}", arg))?;
        args_js
            .push_arg(arg_js)
            .catch(&ctx)
            .map_err(|e| anyhow!("[js_invoke_method_to_json][Args::push_arg] {e}"))?;
    }

    let result: rquickjs::Value = js_fn.call_arg(args_js).catch(&ctx).map_err(|e| {
        anyhow!("[js_invoke_method_to_json][pluginInstance.{endpoint_name}.{name}() result] {e}")
    })?;
    let value = js_value_to_json(result, ctx.clone())?;

    if value.is_null() {
        return Ok(None);
    }

    Ok(Some(serde_json::from_value::<R>(value).map_err(|e| {
        anyhow!("[js_invoke_method_to_json][pluginInstance.{endpoint_name}.{name}() toJson] {e}")
    })?))
}
