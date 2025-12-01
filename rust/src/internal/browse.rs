use crate::api::plugin::models::pagination::SpotubePaginationResponseObject;
use crate::internal::utils::js_invoke_async_method_to_json;
use flutter_rust_bridge::frb;
use rquickjs::{async_with, AsyncContext};

pub struct PluginBrowseEndpoint<'a>(&'a AsyncContext);

impl<'a> PluginBrowseEndpoint<'a> {
    #[frb(ignore)]
    pub fn new(context: &'a AsyncContext) -> PluginBrowseEndpoint<'a> {
        PluginBrowseEndpoint(context)
    }

    pub async fn sections(
        &self,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "browse",
                    "sections",
                    &[serde_json::to_value(offset)?, serde_json::to_value(limit)?]
                )
                .await?
                .expect("[hey][smartypants] browse.sections should return a SpotifyPaginationResponseObject")
            )
        }).await
    }

    pub async fn section_items(
        &self,
        id: String,
        offset: Option<u32>,
        limit: Option<u32>,
    ) -> anyhow::Result<SpotubePaginationResponseObject> {
        async_with!(self.0 => |ctx| {
            Ok(
                js_invoke_async_method_to_json::<_, SpotubePaginationResponseObject>(
                    ctx.clone(),
                    "browse",
                    "sectionItems",
                    &[
                        serde_json::to_value(id)?,
                        serde_json::to_value(offset)?,
                        serde_json::to_value(limit)?,
                    ]
                )
                .await?
                .expect("[hey][smartypants] browse.sectionItems should return a SpotifyPaginationResponseObject")
            )
        }).await
    }
}
