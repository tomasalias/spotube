import 'dart:async';
import 'dart:convert';

import 'package:spotube/services/logger/logger.dart';
import 'package:spotube/src/plugin_api/webview/webview.dart';
import 'package:spotube/src/rust/api/host_api/webview.dart';

class WebViewBinding {
  static void register() async {
    final subscriptions = <String, StreamSubscription>{};

    await initializeWebviewCallbacks(
      createWebview: (uri, sender) async {
        final webview = Webview(uri: uri);

        subscriptions[webview.uid] =
            webview.onUrlRequestStream.listen((event) async {
          try {
            await sendWebviewEvents(tx: sender, event: event);
          } catch (e, stack) {
            AppLogger.reportError(e, stack);
          }
        });

        return webview;
      },
      openWebview: (webview) async {
        await (webview as Webview).open();
      },
      closeWebview: (webview) async {
        subscriptions.remove((webview as Webview).uid);
        await webview.close();
      },
      getCookies: (webview, url) async {
        final cookies = await (webview as Webview).getCookies(url);
        return jsonEncode(cookies);
      },
    );
  }
}
