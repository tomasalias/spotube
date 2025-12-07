use rquickjs::Ctx;

pub mod event_source;
pub mod form;
pub mod webview;

pub fn init(ctx: &Ctx, endpoint_url: String, secret: String) -> rquickjs::Result<()> {
    ctx.globals().set("__serverUrl", endpoint_url)?;
    ctx.globals().set("__serverSecret", secret)?;
    Ok(())
}
