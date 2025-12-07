use rquickjs::{Ctx, Value};

pub fn init(ctx: &Ctx) -> rquickjs::Result<()> {
    ctx.eval::<Value, _>(
        r#"
    globalThis.YouTubeEngine = class YouTubeEngine {
        async request(endpoint, qName, qValue) {
            return await fetch(
                `${__serverUrl}/plugin-api/yt-engine/${endpoint}?${qName}=${encodeURIComponent(qValue)}`,
                {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-Plugin-Secret': __serverSecret,
                    },
                }
            ).then(res=>res.json())
        }
    
        async search(query) {
            return await this.request('search', 'query', query);
        }

        async video(videoId) {
            return await this.request('video', 'videoId', videoId);
        }

        async streamManifest(videoId) {
            return await this.request('stream-manifest', 'videoId', videoId);
        }
    }
    "#,
    )?;

    Ok(())
}
