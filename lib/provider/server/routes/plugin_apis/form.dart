import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:spotube/collections/routes.dart';
import 'package:spotube/collections/routes.gr.dart';
import 'package:spotube/models/metadata/metadata.dart';

class ServerFormRoutes {
  Future<Response> showForm(Request request) async {
    final body = jsonDecode(await request.readAsString());
    final res = await rootNavigatorKey.currentContext!.router
        .push<List<Map<String, dynamic>>?>(
      SettingsMetadataProviderFormRoute(
        title: body["title"],
        fields: (body["fields"] as List)
            .map((e) => MetadataFormFieldObject.fromJson(e))
            .toList(),
      ),
    );

    return Response.ok(
      jsonEncode(res),
      headers: {'Content-Type': 'application/json'},
    );
  }
}

final serverFormRoutesProvider = Provider((ref) => ServerFormRoutes());
