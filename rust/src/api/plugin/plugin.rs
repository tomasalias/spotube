use crate::api::plugin::commands::PluginCommand;
use crate::api::plugin::executors::{
    execute_albums, execute_artists, execute_audio_source, execute_auth, execute_browse,
    execute_core, execute_playlist, execute_search, execute_track, execute_user,
};
use crate::api::plugin::models::core::PluginConfiguration;
use crate::api::plugin::senders::{
    PluginAlbumSender, PluginArtistSender, PluginAudioSourceSender, PluginAuthSender,
    PluginBrowseSender, PluginCoreSender, PluginPlaylistSender, PluginSearchSender,
    PluginTrackSender, PluginUserSender,
};
use crate::internal::apis::fetcher::ReqwestFetcher;
use anyhow::anyhow;
use boa_engine::{Context, Source};
use boa_runtime::{fetch, interval, microtask, text, Console, DefaultLogger};
use flutter_rust_bridge::frb;
use std::thread;
use tokio::runtime::Runtime;
use tokio::sync::mpsc;
use tokio::sync::mpsc::Sender;

#[derive(Debug, Clone)]
#[frb(opaque)]
pub struct OpaqueSender {
    pub sender: Sender<PluginCommand>,
}

#[frb(ignore)]
async fn js_executor_thread(
    plugin_script: String,
    plugin_config: PluginConfiguration,
    mut rx: mpsc::Receiver<PluginCommand>,
) -> anyhow::Result<()> {
    let mut context = create_context()?;
    let injection = format!(
        "const pluginInstance = new {}();",
        plugin_config.entry_point
    );
    let script = format!("{}\n{}", plugin_script, injection);

    context
        .eval(Source::from_bytes(script.as_bytes()))
        .map_err(|e| anyhow!("{}", e))?;

    while let Some(command) = rx.blocking_recv() {
        match command {
            PluginCommand::Artist(commands) => execute_artists(commands, &mut context).await?,
            PluginCommand::Album(commands) => execute_albums(commands, &mut context).await?,
            PluginCommand::AudioSource(commands) => {
                execute_audio_source(commands, &mut context).await?
            }
            PluginCommand::Auth(commands) => execute_auth(commands, &mut context).await?,
            PluginCommand::Browse(commands) => execute_browse(commands, &mut context).await?,
            PluginCommand::Core(commands) => execute_core(commands, &mut context).await?,
            PluginCommand::Playlist(commands) => execute_playlist(commands, &mut context).await?,
            PluginCommand::Search(commands) => execute_search(commands, &mut context).await?,
            PluginCommand::Track(commands) => execute_track(commands, &mut context).await?,
            PluginCommand::User(commands) => execute_user(commands, &mut context).await?,
            PluginCommand::Shutdown => {
                println!("JS Executor thread shutting down.");
                // This command doesn't send a response; break the loop instead.
                return Ok(());
            }
        };
    }

    Ok(())
}

#[frb(ignore)]
pub fn create_context() -> anyhow::Result<Context> {
    let mut context = Context::default();
    Console::register_with_logger(DefaultLogger, &mut context).map_err(|e| anyhow!("{}", e))?;
    fetch::register(ReqwestFetcher::new(), None, &mut context).map_err(|e| anyhow!("{}", e))?;
    interval::register(&mut context).map_err(|e| anyhow!("{}", e))?;
    microtask::register(None, &mut context).map_err(|e| anyhow!("{}", e))?;
    text::register(None, &mut context).map_err(|e| anyhow!("{}", e))?;
    interval::register(&mut context).map_err(|e| anyhow!("{}", e))?;
    microtask::register(None, &mut context).map_err(|e| anyhow!("{}", e))?;

    Ok(context)
}

pub struct SpotubePlugin {
    pub artist: PluginArtistSender,
    pub album: PluginAlbumSender,
    pub audio_source: PluginAudioSourceSender,
    pub auth: PluginAuthSender,
    pub browse: PluginBrowseSender,
    pub core: PluginCoreSender,
    pub playlist: PluginPlaylistSender,
    pub search: PluginSearchSender,
    pub track: PluginTrackSender,
    pub user: PluginUserSender,
}

impl SpotubePlugin {
    #[frb(sync)]
    pub fn new() -> Self {
        Self {
            artist: PluginArtistSender::new(),
            album: PluginAlbumSender::new(),
            audio_source: PluginAudioSourceSender::new(),
            auth: PluginAuthSender::new(),
            browse: PluginBrowseSender::new(),
            core: PluginCoreSender::new(),
            playlist: PluginPlaylistSender::new(),
            search: PluginSearchSender::new(),
            track: PluginTrackSender::new(),
            user: PluginUserSender::new(),
        }
    }

    #[frb(sync)]
    pub fn new_context(
        plugin_script: String,
        plugin_config: PluginConfiguration,
    ) -> anyhow::Result<OpaqueSender> {
        let (command_tx, command_rx) = mpsc::channel(32);

        let _thread_handle = thread::spawn(|| {
            let rt = Runtime::new().unwrap();
            rt.block_on(async {
                if let Err(e) = js_executor_thread(plugin_script, plugin_config, command_rx).await {
                    eprintln!("JS Executor thread encountered a fatal error: {:?}", e);
                }
            });
        });

        Ok(OpaqueSender { sender: command_tx })
    }

    pub async fn dispose(&self, tx: OpaqueSender) -> anyhow::Result<()> {
        tx.sender.send(PluginCommand::Shutdown).await?;
        Ok(())
    }
}
