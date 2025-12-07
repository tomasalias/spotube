use rquickjs::class::Trace;
use rquickjs::{Class, Ctx, JsLifetime, Value};
use serde::{Deserialize, Serialize};
use std::collections::HashMap;
use std::path::Path;
use std::sync::{Arc, Mutex};

/// All values stored as strings; we convert at the edges.
#[derive(Debug, Default, Serialize, Deserialize, Clone)]
struct LocalStorageConfig {
    map: HashMap<String, String>,
}

/// LocalStorage backed by `confy`.
#[derive(Clone, JsLifetime, Trace)]
#[rquickjs::class]
pub struct LocalStorage {
    #[qjs(skip_trace)]
    prefix: String,
    #[qjs(skip_trace)]
    path: String,
    #[qjs(skip_trace)]
    state: Arc<Mutex<LocalStorageConfig>>,
}

fn merge_prefix(prefix: String, key: String) -> String {
    format!("{}->{}", prefix, key)
}

#[rquickjs::methods]
impl LocalStorage {
    #[qjs(constructor)]
    pub fn new(prefix: String, directory: String) -> rquickjs::Result<Self> {
        let path = Path::new(&directory).join("plugin_configs.toml");
        let cfg: LocalStorageConfig = confy::load_path(path.clone()).map_err(|e| {
            rquickjs::Error::new_from_js_message(
                "local_storage",
                "PersistenceError",
                &e.to_string(),
            )
        })?;
        Ok(Self {
            prefix,
            path: path.to_string_lossy().to_string(),
            state: Arc::new(Mutex::new(cfg)),
        })
    }

    /// Persist current state to disk.
    fn persist(&self) -> rquickjs::Result<()> {
        let cfg = self.state.lock().unwrap().clone();
        confy::store_path(self.path.clone(), cfg).map_err(|e| {
            rquickjs::Error::new_from_js_message(
                "local_storage",
                "PersistenceError",
                &e.to_string(),
            )
        })?;
        Ok(())
    }

    #[qjs(rename = "setItem")]
    pub fn set_item(&self, key: String, value: String) -> rquickjs::Result<()> {
        {
            let mut state = self.state.lock().unwrap();
            state
                .map
                .insert(merge_prefix(self.prefix.clone(), key), value);
        }
        self.persist()
    }

    #[qjs(rename = "getItem")]
    pub fn get_item(&self, key: String) -> rquickjs::Result<Option<String>> {
        let state = self.state.lock().map_err(|e| {
            rquickjs::Error::new_from_js_message("local_storage", "LockError", &e.to_string())
        })?;
        let key = merge_prefix(self.prefix.clone(), key.clone());
        Ok(state.map.get(key.as_str()).cloned())
    }

    #[qjs(rename = "removeItem")]
    pub fn remove_item(&self, key: String) -> rquickjs::Result<()> {
        {
            let mut state = self.state.lock().map_err(|e| {
                rquickjs::Error::new_from_js_message("local_storage", "LockError", &e.to_string())
            })?;
            state
                .map
                .remove(merge_prefix(self.prefix.clone(), key).as_str());
        }
        self.persist()
    }

    pub fn clear(&self) -> rquickjs::Result<()> {
        {
            let mut state = self.state.lock().map_err(|e| {
                rquickjs::Error::new_from_js_message("local_storage", "LockError", &e.to_string())
            })?;
            state.map.clear();
        }
        self.persist()
    }
}

pub fn init(ctx: &Ctx, prefix: String, directory: String) -> rquickjs::Result<()> {
    let global = ctx.globals();
    Class::<LocalStorage>::define(&global)?;

    ctx.eval::<Value, _>(format!(
        "globalThis.localStorage = new LocalStorage('{}', '{}');",
        prefix, directory
    ))?;
    Ok(())
}
