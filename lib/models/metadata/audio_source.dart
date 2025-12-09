part of 'metadata.dart';

final oneOptionalDecimalFormatter = NumberFormat('0.#', 'en_US');

enum SpotubeMediaCompressionType {
  lossy,
  lossless,
}

extension GetFileExtension on SpotubeAudioSourceContainerPreset {
  String getFileExtension() {
    return switch (name) {
      "mp4" => "m4a",
      "webm" => "weba",
      _ => name,
    };
  }
}

extension ToStringSpotubeAudioLossyContainerQuality
    on SpotubeAudioLossyContainerQuality {
  toFormattedString() {
    return "${oneOptionalDecimalFormatter.format(bitrate / 1000)}kbps";
  }
}

extension ToStringSpotubeAudioLosslessContainerQuality
    on SpotubeAudioLosslessContainerQuality {
  toFormattedString() {
    return "${bitDepth}bit • ${oneOptionalDecimalFormatter.format(sampleRate / 1000)}kHz";
  }
}
