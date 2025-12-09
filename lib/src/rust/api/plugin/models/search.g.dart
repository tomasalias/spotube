// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotubeSearchResponseObjectImpl _$$SpotubeSearchResponseObjectImplFromJson(
        Map json) =>
    _$SpotubeSearchResponseObjectImpl(
      typeName: json['typeName'] as String,
      albums: (json['albums'] as List<dynamic>)
          .map((e) => SpotubeSimpleAlbumObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => SpotubeFullArtistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      playlists: (json['playlists'] as List<dynamic>)
          .map((e) => SpotubeSimplePlaylistObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      tracks: (json['tracks'] as List<dynamic>)
          .map((e) => SpotubeFullTrackObject.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$SpotubeSearchResponseObjectImplToJson(
        _$SpotubeSearchResponseObjectImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'albums': instance.albums.map((e) => e.toJson()).toList(),
      'artists': instance.artists.map((e) => e.toJson()).toList(),
      'playlists': instance.playlists.map((e) => e.toJson()).toList(),
      'tracks': instance.tracks.map((e) => e.toJson()).toList(),
    };
