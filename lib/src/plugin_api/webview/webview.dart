import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart'
    as webview_window;
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:random_user_agents/random_user_agents.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' hide join;
import 'package:spotube/collections/routes.dart';
import 'package:spotube/components/titlebar/titlebar.dart';
import 'package:spotube/src/plugin_api/webview/webview_page.dart';
import 'package:uuid/uuid.dart';

class Webview {
  final String uri;
  final String uid;
  Webview({
    required this.uri,
  })  : _onUrlRequestStreamController = StreamController<String>.broadcast(),
        uid = const Uuid().v4();

  StreamController<String>? _onUrlRequestStreamController;
  Stream<String> get onUrlRequestStream =>
      _onUrlRequestStreamController!.stream;

  webview_window.Webview? _webview;

  BuildContext? _pageContext;
  Future<void> open() async {
    if (Platform.isLinux) {
      final applicationSupportDir = await getApplicationSupportDirectory();
      final userDataFolder = Directory(
        join(applicationSupportDir.path, "webview_window_Webview2"),
      );

      if (!await userDataFolder.exists()) {
        await userDataFolder.create();
      }

      _webview = await WebviewWindow.create(
        configuration: CreateConfiguration(
          title: "Spotube Login",
          windowHeight: 720,
          windowWidth: 1280,
          userDataFolderWindows: userDataFolder.path,
        ),
      )
        ..setApplicationUserAgent(RandomUserAgents.random());
      _webview!.setOnUrlRequestCallback((url) {
        _onUrlRequestStreamController?.add(url);
        return true;
      });
      _webview!.launch(uri);

      return;
    }

    final route = WebviewPage(
      uri: uri,
      onLoad: (url) {
        _onUrlRequestStreamController?.add(url.toString());
      },
    );

    await rootNavigatorKey.currentContext?.router.pushWidget(
      Builder(builder: (context) {
        _pageContext = context;
        return Scaffold(
          headers: const [
            TitleBar(
              automaticallyImplyLeading: true,
            )
          ],
          child: route,
        );
      }),
    );
  }

  Future<void> close() async {
    _onUrlRequestStreamController?.close();
    _onUrlRequestStreamController = null;
    if (Platform.isLinux) {
      _webview?.close();
      _webview = null;
      return;
    }
    await _pageContext?.maybePop();
  }

  Future<List<Cookie>> getCookies(String url) async {
    if (Platform.isLinux) {
      final cookies = await _webview?.getAllCookies() ?? [];

      return cookies.map((cookie) {
        return Cookie(
          name: cookie.name,
          value: cookie.value,
          domain: cookie.domain,
          expiresDate: cookie.expires?.millisecondsSinceEpoch,
          isHttpOnly: cookie.httpOnly,
          isSecure: cookie.secure,
          isSessionOnly: cookie.sessionOnly,
          path: cookie.path,
        );
      }).toList();
    }

    return await CookieManager.instance(
      // Created in [WebviewPage]. Custom WebViewEnvironment for Windows otherwise it installs
      // in installation directory so permission exception occurs.
      webViewEnvironment: await webViewEnvironment,
    ).getCookies(url: WebUri(url));
  }
}
