pub mod api;
pub mod internal;
pub mod frb_generated;
use api::plugin::models::core::{PluginAbility, PluginConfiguration};
use api::plugin::plugin::SpotubePlugin;

const PLUGIN_JS: &str = "\
class Core {
    async checkUpdate() {
        console.log('Core checkUpdate');
    }
    support() {
        return 'Metadata';
    }
}

class TestingPlugin {
    constructor() {
        this.core = new Core();
    }
}
";

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    let sp_plugin = SpotubePlugin::new();
    let sender = SpotubePlugin::new_context(
        PLUGIN_JS.to_string(),
        PluginConfiguration {
            entry_point: "TestingPlugin".to_string(),
            abilities: vec![PluginAbility::Metadata],
            apis: vec![],
            author: "KRTirtho".to_string(),
            description: "Testing Plugin".to_string(),
            name: "Testing Plugin".to_string(),
            plugin_api_version: "2.0.0".to_string(),
            repository: None,
            version: "0.1.0".to_string(),
        }
    )?;
    let result = sp_plugin.core.support(sender.clone()).await?;

    println!("Result: {:?}", result);

    sp_plugin.dispose(sender.clone()).await?;

    Ok(())
}
