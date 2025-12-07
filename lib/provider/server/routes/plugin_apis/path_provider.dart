import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart' as pp;
import 'package:shelf/shelf.dart';

class ServerPathProviderRoutes {
  static Future<Response> getDirectories(Request request) async {
    final directories = <String, Directory?>{
      'temporary': await Future<Directory?>.value(pp.getTemporaryDirectory())
          .catchError((e) => null),
      'applicationDocuments':
          await Future<Directory?>.value(pp.getApplicationDocumentsDirectory())
              .catchError((e) => null),
      'applicationSupport':
          await Future<Directory?>.value(pp.getApplicationSupportDirectory())
              .catchError((e) => null),
      'library': await Future<Directory?>.value(pp.getLibraryDirectory())
          .catchError((e) => null),
      'externalStorage':
          await pp.getExternalStorageDirectory().catchError((e) => null),
      'downloads': await pp.getDownloadsDirectory().catchError((e) => null),
    }.map((key, value) => MapEntry(key, value?.path));
    return Response.ok(
      jsonEncode(directories),
      headers: {'Content-Type': 'application/json'},
    );
  }
}
