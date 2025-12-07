import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shelf/shelf.dart';
import 'package:spotube/provider/youtube_engine/youtube_engine.dart';
import 'package:spotube/services/youtube_engine/youtube_engine.dart';

class ServerYTEngineRoutes {
  final Ref ref;
  ServerYTEngineRoutes({required this.ref});
  YouTubeEngine get youtubeEngine => ref.read(youtubeEngineProvider);

  Future<Response> search(Request request) async {
    final query = request.url.queryParameters["query"];

    if (query == null || query.isEmpty) {
      return Response.badRequest(
        body: 'Query parameter "query" is required',
      );
    }

    final result = await youtubeEngine.searchVideos(query);
    final mappedResult = result
        .map((video) => {
              'id': video.id.value,
              'title': video.title,
              'author': video.author,
              'duration': video.duration?.inSeconds,
              'description': video.description,
              'uploadDate': video.uploadDate?.toIso8601String(),
              'viewCount': video.engagement.viewCount,
              'likeCount': video.engagement.likeCount,
              'isLive': video.isLive,
            })
        .toList();

    return Response.ok(
      jsonEncode(mappedResult),
      encoding: utf8,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  Future<Response> getVideo(Request request) async {
    final videoId = request.url.queryParameters["videoId"];

    if (videoId == null || videoId.isEmpty) {
      return Response.badRequest(
        body: 'Query parameter "videoId" is required',
      );
    }

    final video = await youtubeEngine.getVideo(videoId);
    final res = {
      'id': video.id.value,
      'title': video.title,
      'author': video.author,
      'duration': video.duration?.inSeconds,
      'description': video.description,
      'uploadDate': video.uploadDate?.toIso8601String(),
      'viewCount': video.engagement.viewCount,
      'likeCount': video.engagement.likeCount,
      'isLive': video.isLive,
    };

    return Response.ok(
      jsonEncode(res),
      encoding: utf8,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }

  Future<Response> streamManifest(Request request) async {
    final videoId = request.url.queryParameters["videoId"];

    if (videoId == null || videoId.isEmpty) {
      return Response.badRequest(
        body: 'Query parameter "videoId" is required',
      );
    }

    final streamManifest =
        await youtubeEngine.getStreamManifest(videoId).then((manifest) {
      final streams = manifest.audioOnly
          .map(
            (stream) => {
              'url': stream.url.toString(),
              'quality': stream.qualityLabel,
              'bitrate': stream.bitrate.bitsPerSecond,
              'container': stream.container.name,
              'videoId': stream.videoId,
            },
          )
          .toList();
      return streams;
    });

    return Response.ok(
      jsonEncode(streamManifest),
      encoding: utf8,
      headers: {
        'Content-Type': 'application/json',
      },
    );
  }
}

final serverYTEngineRoutesProvider = Provider<ServerYTEngineRoutes>(
  (ref) => ServerYTEngineRoutes(ref: ref),
);
