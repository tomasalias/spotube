use rquickjs::prelude::Func;
use rquickjs::{Class, Ctx, Object};

pub fn get_local_timezone() -> rquickjs::Result<String> {
    let timezone = iana_time_zone::get_timezone()
        .map_err(|e| rquickjs::Error::new_from_js_message("Timezone", "Error", &e.to_string()))?;
    Ok(timezone)
}

pub fn get_available_timezones() -> rquickjs::Result<Vec<String>> {
    let timezones: Vec<String> = chrono_tz::TZ_VARIANTS
        .iter()
        .map(|tz| tz.name().to_string())
        .collect();
    Ok(timezones)
}

pub fn init(ctx: &Ctx) -> rquickjs::Result<()> {
    let globals = ctx.globals();
    let timezone_obj = Object::new(ctx.clone())?;
    timezone_obj.set("getLocalTimezone", Func::new(get_local_timezone))?;
    timezone_obj.set("getAvailableTimezones", Func::new(get_available_timezones))?;

    globals.set("Timezone", timezone_obj)?;

    Ok(())
}
