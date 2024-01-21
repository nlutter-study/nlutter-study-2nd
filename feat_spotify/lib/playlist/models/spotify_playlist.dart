// To parse this JSON data, do
//
//     final spotifyPlaylist = spotifyPlaylistFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_playlist.freezed.dart';
part 'spotify_playlist.g.dart';

SpotifyPlaylist spotifyPlaylistFromJson(String str) =>
    SpotifyPlaylist.fromJson(json.decode(str));

String spotifyPlaylistToJson(SpotifyPlaylist data) =>
    json.encode(data.toJson());

@freezed
class SpotifyPlaylist with _$SpotifyPlaylist {
  const factory SpotifyPlaylist({
    @JsonKey(name: "collaborative") required bool collaborative,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "followers") required Followers followers,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "images") required List<Image> images,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "owner") required Owner owner,
    @JsonKey(name: "primary_color") String? primaryColor,
    @JsonKey(name: "public") required bool public,
    @JsonKey(name: "snapshot_id") required String snapshotId,
    @JsonKey(name: "tracks") required Tracks tracks,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "uri") required String uri,
  }) = _SpotifyPlaylist;

  factory SpotifyPlaylist.fromJson(Map<String, dynamic> json) =>
      _$SpotifyPlaylistFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({
    @JsonKey(name: "spotify") required String spotify,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}

@freezed
class Followers with _$Followers {
  const factory Followers({
    @JsonKey(name: "href") required dynamic href,
    @JsonKey(name: "total") required int total,
  }) = _Followers;

  factory Followers.fromJson(Map<String, dynamic> json) =>
      _$FollowersFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "height") required int? height,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "width") required int? width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    @JsonKey(name: "display_name") String? displayName,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "type") required OwnerType type,
    @JsonKey(name: "uri") required String uri,
    @JsonKey(name: "name") String? name,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

enum OwnerType {
  @JsonValue("artist")
  artist,
  @JsonValue("track")
  track,
  @JsonValue("user")
  user
}

final ownerTypeValues = EnumValues({
  "artist": OwnerType.artist,
  "track": OwnerType.track,
  "user": OwnerType.user,
});

@freezed
class Tracks with _$Tracks {
  const factory Tracks({
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "items") required List<Item> items,
    @JsonKey(name: "limit") required int limit,
    @JsonKey(name: "next") required dynamic next,
    @JsonKey(name: "offset") required int offset,
    @JsonKey(name: "previous") required dynamic previous,
    @JsonKey(name: "total") required int total,
  }) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "added_at") required DateTime addedAt,
    @JsonKey(name: "added_by") required Owner addedBy,
    @JsonKey(name: "is_local") required bool isLocal,
    @JsonKey(name: "primary_color") required dynamic primaryColor,
    @JsonKey(name: "track") required Track track,
    @JsonKey(name: "video_thumbnail") required VideoThumbnail videoThumbnail,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Track with _$Track {
  const factory Track({
    @JsonKey(name: "album") required Album album,
    @JsonKey(name: "artists") required List<Owner> artists,
    @JsonKey(name: "disc_number") required int discNumber,
    @JsonKey(name: "duration_ms") required int durationMs,
    @JsonKey(name: "episode") required bool episode,
    @JsonKey(name: "explicit") required bool explicit,
    @JsonKey(name: "external_ids") required ExternalIds externalIds,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "is_local") required bool isLocal,
    @JsonKey(name: "is_playable") required bool isPlayable,
    @JsonKey(name: "linked_from") Owner? linkedFrom,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "popularity") required int popularity,
    @JsonKey(name: "preview_url") required String? previewUrl,
    @JsonKey(name: "track") required bool track,
    @JsonKey(name: "track_number") required int trackNumber,
    @JsonKey(name: "type") required OwnerType type,
    @JsonKey(name: "uri") required String uri,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    @JsonKey(name: "album_type") required AlbumTypeEnum albumType,
    @JsonKey(name: "artists") required List<Owner> artists,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "images") required List<Image> images,
    @JsonKey(name: "is_playable") required bool isPlayable,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "release_date") required String releaseDate,
    @JsonKey(name: "release_date_precision")
    required String releaseDatePrecision,
    @JsonKey(name: "total_tracks") required int totalTracks,
    @JsonKey(name: "type") required AlbumTypeEnum type,
    @JsonKey(name: "uri") required String uri,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

enum AlbumTypeEnum {
  @JsonValue("album")
  album,
  @JsonValue("compilation")
  compilation,
  @JsonValue("single")
  single
}

final albumTypeEnumValues = EnumValues({
  "album": AlbumTypeEnum.album,
  "compilation": AlbumTypeEnum.compilation,
  "single": AlbumTypeEnum.single,
});

enum ReleaseDatePrecision {
  @JsonValue("day")
  day
}

final releaseDatePrecisionValues =
    EnumValues({"day": ReleaseDatePrecision.day});

@freezed
class ExternalIds with _$ExternalIds {
  const factory ExternalIds({
    @JsonKey(name: "isrc") String? isrc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}

@freezed
class VideoThumbnail with _$VideoThumbnail {
  const factory VideoThumbnail({
    @JsonKey(name: "url") required dynamic url,
  }) = _VideoThumbnail;

  factory VideoThumbnail.fromJson(Map<String, dynamic> json) =>
      _$VideoThumbnailFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
