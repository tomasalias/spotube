import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:spotube/provider/server/server.dart';
import 'package:spotube/src/plugin_api/webview/webview.dart';
import 'package:async/async.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class ServerWebviewRoutes {
  final Ref ref;
  ServerWebviewRoutes({required this.ref});

  final Map<String, Webview> _webviews = {};

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

    // Create a stream that merges URL events with keepalive pings
    final controller = StreamController<List<int>>();

    // Send keepalive comment every 15 seconds to prevent connection timeout
    final keepaliveTimer = Stream.periodic(
      const Duration(seconds: 15),
      (_) => utf8.encode(": keepalive\n\n"),
    );

    final urlStream = webview.onUrlRequestStream.map((url) {
      return utf8.encode("event: url-request\n"
          "data: ${jsonEncode({'url': url})}\n\n");
    });

    // Merge both streams
    final subscription = StreamGroup.merge([keepaliveTimer, urlStream]).listen(
      (data) {
        if (!controller.isClosed) {
          controller.add(data);
        }
      },
      onDone: () {
        controller.close();
      },
    );

    // Clean up when client disconnects
    controller.onCancel = () {
      debugPrint('Webview $uid client disconnected');
      subscription.cancel();
    };

    return Response.ok(
      controller.stream,
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
    if (webview == null) {
      return Response.notFound('Webview with uid $uid not found');
    }
    await webview.close();

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
    for (final webview in _webviews.values) {
      await webview.close();
    }
    _webviews.clear();
  }
}

final serverWebviewRoutesProvider =
    Provider((ref) => ServerWebviewRoutes(ref: ref));
