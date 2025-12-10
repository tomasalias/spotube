use rquickjs::Ctx;

pub mod form;
pub mod local_storage;
pub mod timezone;
pub mod webview;
pub mod yt_engine;

pub fn init(ctx: &Ctx, endpoint_url: String, secret: String) -> rquickjs::Result<()> {
    ctx.globals().set("__serverUrl", endpoint_url)?;
    ctx.globals().set("__serverSecret", secret)?;

    Ok(())
}
