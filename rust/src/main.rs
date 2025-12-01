use rquickjs::function::Async;
use rquickjs::prelude::Func;
use rquickjs::{
    async_with, AsyncContext, AsyncRuntime, CatchResultExt, CaughtError, Function, Object, Promise,
    Result,
};
use std::time::Duration;

fn print(msg: String) {
    println!("{}", msg);
}

async fn set_timeout<'js>(cb: Function<'js>, number: f64) -> Result<()> {
    tokio::time::sleep(Duration::from_millis(number as u64)).await;
    cb.call::<_, ()>(())
}

#[tokio::main]
async fn main() -> Result<()> {
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

        if let Ok(function) = ctx.eval::<Function, _>(r#"
            (function(){
                return new Promise((resolve, reject) => {
                    setTimeout(() => {
                        console.log("hello world");
                        resolve();
                    }, 100);
                })
            })
        "#) {
            let promise: Promise = function.call(()).unwrap();
            if let Err(err) = promise.into_future::<()>().await.catch(&ctx) {
                eprintln!("{:?}", err);
            }
        }
    })
    .await;

    Ok(())
}
