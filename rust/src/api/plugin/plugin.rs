use crate::api::plugin::commands::PluginCommand;
use crate::api::plugin::event_loop::Queue;
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
use boa_engine::job::JobExecutor;
use boa_engine::{Context, Source};
use boa_runtime::{fetch, interval, microtask, text, Console, DefaultLogger};
use flutter_rust_bridge::frb;
use std::cell::RefCell;
use std::rc::Rc;
use std::sync::Arc;
use std::thread;
use std::time::Duration;
use tokio::runtime::Runtime;
use tokio::sync::mpsc::Sender;
use tokio::sync::{mpsc, Mutex};
use tokio::task;

#[derive(Debug, Clone)]
#[frb(opaque)]
pub struct OpaqueSender {
    pub sender: Sender<PluginCommand>,
}

async fn js_poller_thread(context: Arc<Mutex<Context>>, queue: Rc<Queue>) -> anyhow::Result<()> {
    let local_set = task::LocalSet::new();

    local_set
        .run_until(async {
            let mut ctx = context.lock().await;
            queue.run_jobs_async(&RefCell::new(&mut *ctx)).await
        })
        .await
        .map_err(|e| anyhow!("{}", e))?;
    Ok(())
}

// #[frb(ignore)]
async fn js_executor_thread(
    rx: &mut mpsc::Receiver<PluginCommand>,
    context: Arc<Mutex<Context>>,
) -> anyhow::Result<()> {
    if let Some(command) = rx.recv().await {
        let result = {
            println!("JS Executor thread received command: {:?}", command);
            match command {
                PluginCommand::Artist(commands) => {
                    let mut ctx = context.lock().await;
                    execute_artists(commands, &mut *ctx).await
                }
                PluginCommand::Album(commands) => {
                    let mut ctx = context.lock().await;
                    execute_albums(commands, &mut *ctx).await
                }
                PluginCommand::AudioSource(commands) => {
                    let mut ctx = context.lock().await;
                    execute_audio_source(commands, &mut *ctx).await
                }
                PluginCommand::Auth(commands) => {
                    let mut ctx = context.lock().await;
                    execute_auth(commands, &mut *ctx).await
                }
                PluginCommand::Browse(commands) => {
                    let mut ctx = context.lock().await;
                    execute_browse(commands, &mut *ctx).await
                }
                PluginCommand::Core(commands) => {
                    let mut ctx = context.lock().await;
                    execute_core(commands, &mut *ctx).await
                }
                PluginCommand::Playlist(commands) => {
                    let mut ctx = context.lock().await;
                    execute_playlist(commands, &mut *ctx).await
                }
                PluginCommand::Search(commands) => {
                    let mut ctx = context.lock().await;
                    execute_search(commands, &mut *ctx).await
                }
                PluginCommand::Track(commands) => {
                    let mut ctx = context.lock().await;
                    execute_track(commands, &mut *ctx).await
                }
                PluginCommand::User(commands) => {
                    let mut ctx = context.lock().await;
                    execute_user(commands, &mut *ctx).await
                }
                PluginCommand::Shutdown => {
                    println!("JS Executor thread shutting down.");
                    return anyhow::Ok(());
                }
            }
        };

        println!("JS executor command completed");
        return result;
    }
    Ok(())
}

#[frb(ignore)]
pub async fn create_context() -> anyhow::Result<(Context, Rc<Queue>)> {
    let queue = Rc::new(Queue::new());
    let mut context = Context::builder()
        .job_executor(queue.clone())
        .build()
        .map_err(|e| anyhow!("{}", e))?;

    Console::register_with_logger(DefaultLogger, &mut context).map_err(|e| anyhow!("{}", e))?;
    fetch::register(ReqwestFetcher::new(), None, &mut context).map_err(|e| anyhow!("{}", e))?;
    interval::register(&mut context).map_err(|e| anyhow!("{}", e))?;
    microtask::register(None, &mut context).map_err(|e| anyhow!("{}", e))?;
    text::register(None, &mut context).map_err(|e| anyhow!("{}", e))?;
    interval::register(&mut context).map_err(|e| anyhow!("{}", e))?;
    microtask::register(None, &mut context).map_err(|e| anyhow!("{}", e))?;

    Ok((context, queue))
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

    // #[frb(sync)]
    pub fn new_context(
        plugin_script: String,
        plugin_config: PluginConfiguration,
    ) -> anyhow::Result<OpaqueSender> {
        let (command_tx, mut command_rx) = mpsc::channel(32);

        let _thread_handle = thread::spawn(move || {
            let rt = Runtime::new().unwrap();
            if let Err(e) = rt.block_on(async {
                let (context, queue) = create_context().await.unwrap();
                let context_arc_mutex = Arc::new(Mutex::new(context));

                let injection = format!(
                    "globalThis.pluginInstance = new {}();",
                    plugin_config.entry_point
                );
                let script = format!("{}\n{}", plugin_script, injection);

                {
                    let context_refcell = context_arc_mutex.clone();

                    context_refcell
                        .lock()
                        .await
                        .eval(Source::from_bytes(script.as_bytes()))
                        .map_err(|e| anyhow!("{}", e))?;
                }

                loop {
                    let executor = js_executor_thread(&mut command_rx, context_arc_mutex.clone());
                    let poller = js_poller_thread(context_arc_mutex.clone(), queue.clone());
                    let sleep_timer = tokio::time::sleep(Duration::from_millis(10));

                    tokio::select!(
                        res = executor => {
                            if let Err(e) = res {
                                eprintln!("JS Executor task error: {}", e);
                                break;
                            }
                        },
                        res = poller => {
                            if let Err(e) = res {
                                eprintln!("JS Poller task error: {}", e);
                                break;
                            }
                        },
                        _ = sleep_timer => {},
                    );
                }

                anyhow::Ok(())
            }) {
                eprintln!("JS Executor thread error: {}", e);
            }
        });

        Ok(OpaqueSender { sender: command_tx })
    }

    pub async fn dispose(&self, tx: OpaqueSender) -> anyhow::Result<()> {
        tx.sender.send(PluginCommand::Shutdown).await?;
        Ok(())
    }
}
