use anyhow::anyhow;
use boa_engine::property::PropertyKey;
use boa_engine::{object::builtins::JsArray, Context, JsObject, JsResult, JsString, JsValue};
use serde_json::{Map, Value};

pub fn vec_string_to_js_array(
    rust_vec: Vec<String>,
    context: &mut Context,
) -> anyhow::Result<JsValue> {
    let builder = JsArray::new(context);

    for (index, rust_string) in rust_vec.into_iter().enumerate() {
        let js_string_value = JsString::from(rust_string);
        builder
            .set(index as u32, js_string_value, true, context)
            .map_err(|e| anyhow::anyhow!(e.to_string()))?;
    }

    Ok(builder.into())
}

#[allow(dead_code)]
pub async fn js_call_to_string(
    result: JsResult<JsValue>,
    context: &mut Context,
) -> anyhow::Result<String> {
    let res = result
        .map_err(|e| anyhow!("{}", e))
        .and_then(|f| f.as_promise().ok_or(anyhow!("Not a promise")))?
        .into_js_future(context)
        .await
        .map_err(|e| anyhow!("{}", e))?
        .as_string()
        .ok_or(anyhow!("No response string returned"))?
        .to_std_string()
        .map_err(|e| anyhow!("{}", e))?;

    Ok(res)
}

pub async fn js_call_to_json(
    result: JsResult<JsValue>,
    context: &mut Context,
) -> anyhow::Result<Value> {
    let res = result
        .map_err(|e| anyhow!("{}", e))
        .and_then(|f| f.as_promise().ok_or(anyhow!("Not a promise")))?
        .into_js_future(context)
        .await
        .map_err(|e| anyhow!("{}", e))?;
    let ls = js_value_to_json(&res, context)?;
    Ok(ls)
}

pub async fn js_call_to_void(
    result: JsResult<JsValue>,
    context: &mut Context,
) -> anyhow::Result<()> {
    result
        .map_err(|e| anyhow!("{}", e))
        .and_then(|f| f.as_promise().ok_or(anyhow!("Not a promise")))?
        .into_js_future(context)
        .await
        .map_err(|e| anyhow!("{}", e))?;

    Ok(())
}

/// Convert a `serde_json::Value` into a Boa `JsValue`
pub fn json_value_to_js(value: &Value, ctx: &mut Context) -> JsResult<JsValue> {
    match value {
        Value::Null => Ok(JsValue::null()),
        Value::Bool(b) => Ok(JsValue::from(*b)),
        Value::Number(n) => {
            if let Some(i) = n.as_i64() {
                Ok(JsValue::new(i))
            } else if let Some(f) = n.as_f64() {
                Ok(JsValue::new(f))
            } else {
                Ok(JsValue::null()) // fallback (rare)
            }
        }
        Value::String(s) => Ok(JsValue::from(JsString::from(s.as_str()))),

        Value::Array(arr) => {
            let js_arr = JsArray::new(ctx);
            for (idx, item) in arr.iter().enumerate() {
                let js_val = json_value_to_js(item, ctx)?;
                js_arr.set(idx, js_val, false, ctx)?;
            }
            Ok(JsValue::from(js_arr))
        }

        Value::Object(obj) => {
            let js_obj = JsObject::with_null_proto();

            for (key, val) in obj {
                let js_val = json_value_to_js(val, ctx)?;
                js_obj.set(JsString::from(key.as_str()), js_val, true, ctx)?;
            }

            Ok(JsValue::from(js_obj))
        }
    }
}

/// Convert a Boa `JsValue` into a `serde_json::Value`
pub fn js_value_to_json(value: &JsValue, ctx: &mut Context) -> anyhow::Result<Value> {
    if value.is_null() || value.is_undefined() {
        return Ok(Value::Null);
    }

    if let Some(b) = value.as_boolean() {
        return Ok(Value::Bool(b));
    }

    if let Some(n) = value.as_number() {
        let num = serde_json::Number::from_f64(n).ok_or(anyhow!("Invalid number"))?;
        return Ok(Value::Number(num));
    }

    if let Some(s) = value.as_string() {
        let s = s.to_std_string().map_err(|e| anyhow!("{}", e))?;
        return Ok(Value::String(s));
    }

    if value.is_bigint() {
        // BigInts are NOT JSON-compatible → store as string
        return Ok(Value::String(value.display().to_string()));
    }

    if value.is_object() {
        let obj = value.as_object().ok_or(anyhow!("Not an object"))?;

        // Array?
        if obj.is_array() {
            let obj = JsArray::from_object(obj).map_err(|e| anyhow!("{}", e))?;
            let length = obj.length(ctx).map_err(|e| anyhow!("{}", e))?;
            let mut json_arr = Vec::<Value>::with_capacity(length as usize);

            for i in 0..length {
                let item = obj.get(i, ctx).unwrap_or(JsValue::null());
                let item_json = js_value_to_json(&item, ctx)?;
                json_arr.push(item_json);
            }

            return Ok(Value::Array(json_arr));
        }

        // Regular Object
        let mut map = Map::<String, Value>::new();

        for key in obj.own_property_keys(ctx).map_err(|e| anyhow!("{}", e))? {
            let key_val: Option<String> = match key.clone() {
                PropertyKey::String(s) => Some(s.to_std_string().map_err(|e| anyhow!("{}", e))?),
                PropertyKey::Index(i) => Some(serde_json::Number::from(i.get()).to_string()),
                _ => None,
            };

            let v_js = obj.get(key, ctx).unwrap_or(JsValue::null());
            let v_json = js_value_to_json(&v_js, ctx)?;

            if let Some(key_val) = key_val {
                map.insert(key_val, v_json);
            }
        }

        return Ok(Value::Object(map));
    }

    // Fallback for unsupported JS types: functions, symbols, etc.
    Ok(Value::Null)
}
