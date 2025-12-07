use rquickjs::Ctx;
use serde::{Deserialize, Serialize};

pub mod form;
pub mod local_storage;
pub mod webview;
pub mod timezone;

pub fn init(ctx: &Ctx, endpoint_url: String, secret: String) -> rquickjs::Result<()> {
    ctx.globals().set("__serverUrl", endpoint_url)?;
    ctx.globals().set("__serverSecret", secret)?;
    
    Ok(())
}

#[derive(Debug, Serialize, Deserialize, Clone)]
#[serde(rename_all = "camelCase")]
pub struct DirectoriesResponse {
    pub temporary: Option<String>,
    pub application_documents: Option<String>,
    pub application_support: Option<String>,
    pub library: Option<String>,
    pub external_storage: Option<String>,
    pub downloads: Option<String>,
}

pub async fn get_platform_directories(
    server_url: String,
    server_secret: String,
) -> anyhow::Result<DirectoriesResponse> {
    let client = reqwest::Client::new();
    Ok(client
        .get(format!("{}/plugin/localstorage/directories", server_url).as_str())
        .header("X-Plugin-Secret", server_secret.as_str())
        .send()
        .await?
        .json::<DirectoriesResponse>()
        .await?)
}
