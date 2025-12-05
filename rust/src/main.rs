mod api;
mod frb_generated;
mod internal;

use rquickjs::function::{Async, Func};
use rquickjs::{async_with, AsyncContext, AsyncRuntime, Function, Object, Promise};
use tokio::time::Instant;

use crate::api::plugin::models::core::{PluginAbility, PluginConfiguration};
use crate::api::plugin::plugin::SpotubePlugin;

async fn set_timeout(func: Function<'_>, timeout: u64) {
    tokio::time::sleep(std::time::Duration::from_millis(timeout)).await;
    func.call::<_, ()>(()).unwrap();
}

fn print(msg: String) {
    println!("{}", msg);
}

async fn non_plugin() -> anyhow::Result<()> {
    let start = Instant::now();
    let rt = AsyncRuntime::new()?;
    let ctx = AsyncContext::full(&rt).await?;

    async_with!(ctx => |ctx| {
         let global = ctx.globals();
         let console = Object::new(ctx.clone()).unwrap();
         console.set("log", Func::from(print)).unwrap();
         global.set("console", console).unwrap();

         global.set("setTimeout",
            Function::new(ctx.clone(), Async(set_timeout)).unwrap().with_name("setTimeout")
        ).unwrap();

        let check_update_fn: Function = ctx.eval(r#"
            function sleep(ms) {
                return new Promise(resolve => setTimeout(resolve, ms));
            }
            (async function checkUpdate() {
                console.log('Core checkUpdate');
                await sleep(1000);
                console.log('No update available');
            })
        "#)?;

        let (r1, r2) = tokio::join!(
            check_update_fn.call::<_, Promise>(()).unwrap().into_future::<()>(),
            check_update_fn.call::<_, Promise>(()).unwrap().into_future::<()>()
        );
        r1?;
        r2?;
        Ok::<(), rquickjs::Error>(())
    })
    .await
    .map_err(|e| anyhow::anyhow!(e))?;

    let duration = start.elapsed();
    println!("[NON-PLUGIN] Execution time: {:?}", duration);
    Ok(())
}

const PLUGIN_JS: &str = "\
function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
}

class Core {
    async checkUpdate() {
        console.log('Core checkUpdate');
        await sleep(1000);
        console.log('No update available');
    }
    support() {
        return 'Metadata';
    }
}

class Auth {}

class TestingPlugin {
    constructor() {
        this.core = new Core();
        this.auth = new Auth();
    }
}
";

async fn plugin() -> anyhow::Result<()> {
    let start = Instant::now();
    let plugin = SpotubePlugin::new();
    let config = PluginConfiguration {
        entry_point: "TestingPlugin".to_string(),
        abilities: vec![PluginAbility::Metadata],
        apis: vec![],
        author: "KRTirtho".to_string(),
        description: "Testing Plugin".to_string(),
        name: "Testing Plugin".to_string(),
        plugin_api_version: "2.0.0".to_string(),
        repository: None,
        version: "0.1.0".to_string(),
    };
    let sender = plugin.create_context(PLUGIN_JS.to_string(), config.clone(), "".to_string(), "".to_string())?;
    let (r1, r2) = tokio::join!(
        plugin.core.check_update(&sender, config.clone()),
        plugin.core.check_update(&sender, config.clone())
    );
    r1?;
    r2?;

    let duration = start.elapsed();
    println!("[PLUGIN] Execution time: {:?}", duration);

    Ok(())
}

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    non_plugin().await?;
    plugin().await?;
    Ok(())
}
