import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:spotube/provider/server/libs/shelf_eventsource.dart';
import 'package:spotube/provider/server/routes/connect.dart';
import 'package:spotube/provider/server/routes/playback.dart';
import 'package:spotube/provider/server/routes/plugin_apis/form.dart';
import 'package:spotube/provider/server/routes/plugin_apis/webview.dart';
import 'package:spotube/provider/server/routes/plugin_apis/yt_engine.dart';
import 'package:spotube/provider/server/sse_publisher.dart';

Handler pluginApiAuthMiddleware(Handler handler) {
  return (Request request) {
    final apiKey = request.headers['X-Plugin-Secret'] ??
        request.url.queryParameters['secret'];
    if (apiKey == null || apiKey != request.context['plugin_api_secret']) {
      return Response.forbidden('Forbidden');
    }
    return handler(request);
  };
}

final serverRouterProvider = Provider((ref) {
  final playbackRoutes = ref.watch(serverPlaybackRoutesProvider);
  final connectRoutes = ref.watch(serverConnectRoutesProvider);
  final webviewRoutes = ref.watch(serverWebviewRoutesProvider);
  final formRoutes = ref.watch(serverFormRoutesProvider);
  final ytEngineRoutes = ref.watch(serverYTEngineRoutesProvider);
  final publisher = ref.watch(ssePublisherProvider);
  final sseHandler = eventSourceHandler(publisher);

  final router = Router();

  router.get("/ping", (Request request) => Response.ok("pong"));

  router.head("/stream/<trackId>", playbackRoutes.headStreamTrackId);
  router.get("/stream/<trackId>", playbackRoutes.getStreamTrackId);

  router.get("/playback/toggle-playback", playbackRoutes.togglePlayback);
  router.get("/playback/previous", playbackRoutes.previousTrack);
  router.get("/playback/next", playbackRoutes.nextTrack);

  router.post(
    "/plugin-api/webview/create",
    pluginApiAuthMiddleware(webviewRoutes.postCreateWebview),
  );
  router.get(
    "/plugin-api/webview/events",
    pluginApiAuthMiddleware(sseHandler),
  );
  router.post(
    "/plugin-api/webview/open",
    pluginApiAuthMiddleware(webviewRoutes.postOpenWebview),
  );
  router.post(
    "/plugin-api/webview/close",
    pluginApiAuthMiddleware(webviewRoutes.postCloseWebview),
  );
  router.post(
    "/plugin-api/webview/cookies",
    pluginApiAuthMiddleware(webviewRoutes.postGetWebviewCookies),
  );
  router.post(
    "/plugin-api/form/show",
    pluginApiAuthMiddleware(formRoutes.showForm),
  );

  router.get(
    "/plugin-api/yt-engine/search",
    pluginApiAuthMiddleware(ytEngineRoutes.search),
  );
  router.get(
    "/plugin-api/yt-engine/video",
    pluginApiAuthMiddleware(ytEngineRoutes.getVideo),
  );
  router.get(
    "/plugin-api/yt-engine/stream-manifest",
    pluginApiAuthMiddleware(ytEngineRoutes.streamManifest),
  );

  router.all("/ws", connectRoutes.websocket);

  ref.onDispose(() {
    webviewRoutes.dispose();
  });

  return router;
});
