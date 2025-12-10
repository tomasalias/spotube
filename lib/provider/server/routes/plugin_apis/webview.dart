import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:spotube/provider/server/libs/eventsource_publisher.dart';
import 'package:spotube/provider/server/server.dart';
import 'package:spotube/provider/server/sse_publisher.dart';
import 'package:spotube/src/plugin_api/webview/webview.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class ServerWebviewRoutes {
  final Ref ref;
  ServerWebviewRoutes({required this.ref});

  final Map<String, Webview> _webviews = {};
  final Map<String, StreamSubscription> _eventSubscriptions = {};

  String _encryptCookies(dynamic cookies, String secret) {
    final keyBytes = base64.decode(secret);
    final key = encrypt.Key(keyBytes);
    final ivBytes = List<int>.generate(16, (_) => Random.secure().nextInt(256));
    final iv = encrypt.IV(Uint8List.fromList(ivBytes));

    final encrypter = encrypt.Encrypter(
      encrypt.AES(key, mode: encrypt.AESMode.cbc, padding: 'PKCS7'),
    );

    final encrypted = encrypter.encrypt(jsonEncode(cookies), iv: iv);
    final combined = iv.bytes + encrypted.bytes;
    return base64.encode(combined);
  }

  Future<Response> postCreateWebview(Request request) async {
    final payload = jsonDecode(await request.readAsString());
    final uri = Uri.parse(payload['url'] as String);

    final webview = Webview(uri: uri.toString());
    _webviews[webview.uid] = webview;

    _eventSubscriptions[webview.uid] = webview.onUrlRequestStream.listen((url) {
      ref.read(ssePublisherProvider).add(
            Event(
              event: "url-request",
              data: jsonEncode({'uid': webview.uid, 'url': url}),
            ),
          );
    });

    return Response.ok(
      jsonEncode({'uid': webview.uid}),
      encoding: utf8,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  Future<Response> getOnUrlRequestStream(Request request) async {
    final uid = request.params["uid"];

    final webview = _webviews[uid];
    if (webview == null) {
      return Response.notFound('Webview with uid $uid not found');
    }

    final urlStream = webview.onUrlRequestStream.map((url) {
      final payload = "event: url-request\n"
          "data: ${jsonEncode({'url': url})}\n\n";

      debugPrint('[server][webview] sending:\n$payload');
      return utf8.encode(payload);
    });

    return Response.ok(
      urlStream,
      headers: {
        'Content-Type': 'text/event-stream',
        'Cache-Control': 'no-cache',
        'Connection': 'keep-alive',
        'X-Accel-Buffering': 'no', // Disable buffering for nginx
      },
      encoding: utf8,
    );
  }

  Future<Response> postOpenWebview(Request request) async {
    final body = jsonDecode(await request.readAsString());
    final uid = body['uid'] as String;

    final webview = _webviews[uid];
    if (webview == null) {
      return Response.notFound('Webview with uid $uid not found');
    }
    await webview.open();
    return Response.ok(null);
  }

  Future<Response> postCloseWebview(Request request) async {
    final body = jsonDecode(await request.readAsString());
    final uid = body['uid'] as String;

    final webview = _webviews[uid];
    final subscription = _eventSubscriptions[uid];
    if (webview == null || subscription == null) {
      return Response.notFound('Webview with uid $uid not found');
    }
    subscription.cancel();
    await webview.close();

    _eventSubscriptions.remove(uid);
    _webviews.remove(uid);
    return Response.ok(null);
  }

  Future<Response> postGetWebviewCookies(Request request) async {
    final secret = ref.read(serverRandomSecretProvider);

    final body = jsonDecode(await request.readAsString());
    final uid = body['uid'] as String;
    final url = body['url'] as String;

    final webview = _webviews[uid];
    if (webview == null) {
      return Response.notFound('Webview with uid $uid not found');
    }
    final cookies = await webview.getCookies(url);
    final encryptedCookies = _encryptCookies(cookies, secret);
    return Response.ok(
      jsonEncode({'data': encryptedCookies}),
      encoding: utf8,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  Future<void> dispose() async {
    for (final subscription in _eventSubscriptions.values) {
      await subscription.cancel();
    }
    _eventSubscriptions.clear();
    for (final webview in _webviews.values) {
      await webview.close();
    }
    _webviews.clear();
  }
}

final serverWebviewRoutesProvider =
    Provider((ref) => ServerWebviewRoutes(ref: ref));
