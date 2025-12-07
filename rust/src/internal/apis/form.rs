use rquickjs::{Ctx, Value};

pub fn init(ctx: &Ctx) -> rquickjs::Result<()> {
    ctx.eval::<Value, _>(
        r#"
    globalThis.SpotubeForm = class SpotubeForm {
        static async show(title, fields) {
            return await fetch(
                `${__serverUrl}/plugin-api/form/show`,
                {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-Plugin-Secret': __serverSecret,
                    },
                    body: JSON.stringify({ title, fields }),
                }
            ).then(res=>res.json());
        }
    }
    "#,
    )?;

    Ok(())
}
