part of 'metadata.dart';

extension SpotubeFullArtistObjectAsString on List<SpotubeFullArtistObject> {
  String asString() {
    return map((e) => e.name).join(", ");
  }
}

extension SpotubeSimpleArtistObjectAsString on List<SpotubeSimpleArtistObject> {
  String asString() {
    return map((e) => e.name).join(", ");
  }
}
