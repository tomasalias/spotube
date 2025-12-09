library metadata_objects;

import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:metadata_god/metadata_god.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';
import 'package:spotube/collections/assets.gen.dart';
import 'package:spotube/models/metadata/metadata.dart';
import 'package:spotube/services/audio_player/audio_player.dart';
import 'package:spotube/utils/primitive_utils.dart';

export "package:spotube/src/rust/api/plugin/models/album.dart";
export "package:spotube/src/rust/api/plugin/models/audio_source.dart";
export "package:spotube/src/rust/api/plugin/models/artist.dart";
export "package:spotube/src/rust/api/plugin/models/auth.dart";
export "package:spotube/src/rust/api/plugin/models/browse.dart";
export "package:spotube/src/rust/api/plugin/models/core.dart";
export "package:spotube/src/rust/api/plugin/models/playlist.dart";
export "package:spotube/src/rust/api/plugin/models/track.dart";
export "package:spotube/src/rust/api/plugin/models/user.dart";
export "package:spotube/src/rust/api/plugin/models/image.dart";
export "package:spotube/src/rust/api/plugin/models/pagination.dart";
export "package:spotube/src/rust/api/plugin/models/search.dart";

part 'metadata.g.dart';
part 'metadata.freezed.dart';

part 'artist.dart';
part 'audio_source.dart';
part 'browse.dart';
part 'fields.dart';
part 'image.dart';
part 'pagination.dart';
part 'track.dart';
part 'repository.dart';
