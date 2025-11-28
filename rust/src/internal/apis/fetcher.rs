use std::{cell::RefCell, rc::Rc};

use boa_engine::{Context, Finalize, JsData, JsResult, Trace};
use boa_runtime::fetch::{request::JsRequest, response::JsResponse, Fetcher};

#[derive(Default, Debug, Clone, Trace, Finalize, JsData)]
pub struct ReqwestFetcher {
    #[unsafe_ignore_trace]
    client: reqwest::Client,
}

impl ReqwestFetcher {
    pub fn new() -> Self {
        ReqwestFetcher {
            client: reqwest::Client::new(),
        }
    }
}

impl Fetcher for ReqwestFetcher {
    async fn fetch(
        self: Rc<Self>,
        request: JsRequest,
        _context: &RefCell<&mut Context>,
    ) -> JsResult<JsResponse> {
        use boa_engine::{JsError, JsString};

        let request = request.into_inner();
        let method = request.method().clone();
        let url = request.uri().to_string();
        let req = self
            .client
            .request(method, &url)
            .headers(request.headers().clone());

        let req = req
            .body(request.body().clone())
            .build()
            .map_err(JsError::from_rust)?;

        let resp = self.client.execute(req).await.map_err(JsError::from_rust)?;

        let status = resp.status();
        let headers = resp.headers().clone();
        let bytes = resp.bytes().await.map_err(JsError::from_rust)?;
        let mut builder = http::Response::builder().status(status.as_u16());

        for k in headers.keys() {
            for v in headers.get_all(k) {
                builder = builder.header(k.as_str(), v);
            }
        }

        builder
            .body(bytes.to_vec())
            .map_err(JsError::from_rust)
            .map(|request| JsResponse::basic(JsString::from(url), request))
    }
}
