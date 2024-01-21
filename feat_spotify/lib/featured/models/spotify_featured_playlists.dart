import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_featured_playlists.freezed.dart';
part 'spotify_featured_playlists.g.dart';

SpotifyFeaturedPlaylists spotifyFeaturedPlaylistsFromJson(String str) =>
    SpotifyFeaturedPlaylists.fromJson(json.decode(str));

String spotifyFeaturedPlaylistsToJson(SpotifyFeaturedPlaylists data) =>
    json.encode(data.toJson());

@freezed
class SpotifyFeaturedPlaylists with _$SpotifyFeaturedPlaylists {
  const factory SpotifyFeaturedPlaylists({
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "playlists") required Playlists playlists,
  }) = _SpotifyFeaturedPlaylists;

  factory SpotifyFeaturedPlaylists.fromJson(Map<String, dynamic> json) =>
      _$SpotifyFeaturedPlaylistsFromJson(json);
}

@freezed
class Playlists with _$Playlists {
  const factory Playlists({
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "items") required List<SpotifySimplifiedPlaylist> items,
    @JsonKey(name: "limit") required int limit,
    @JsonKey(name: "next") required dynamic next,
    @JsonKey(name: "offset") required int offset,
    @JsonKey(name: "previous") required dynamic previous,
    @JsonKey(name: "total") required int total,
  }) = _Playlists;

  factory Playlists.fromJson(Map<String, dynamic> json) =>
      _$PlaylistsFromJson(json);
}

@freezed
class SpotifySimplifiedPlaylist with _$SpotifySimplifiedPlaylist {
  const factory SpotifySimplifiedPlaylist({
    @JsonKey(name: "collaborative") required bool collaborative,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "images") required List<Image> images,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "owner") required Owner owner,
    @JsonKey(name: "primary_color") required dynamic primaryColor,
    @JsonKey(name: "public") required dynamic public,
    @JsonKey(name: "snapshot_id") required String snapshotId,
    @JsonKey(name: "tracks") required Tracks tracks,
    @JsonKey(name: "type") required ItemType type,
    @JsonKey(name: "uri") required String uri,
  }) = _SpotifySimplifiedPlaylist;

  factory SpotifySimplifiedPlaylist.fromJson(Map<String, dynamic> json) =>
      _$SpotifySimplifiedPlaylistFromJson(json);
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
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "height") required dynamic height,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "width") required dynamic width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Owner with _$Owner {
  const factory Owner({
    @JsonKey(name: "display_name") required DisplayName displayName,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required Id id,
    @JsonKey(name: "type") required OwnerType type,
    @JsonKey(name: "uri") required SpotifyUri uri,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

enum DisplayName {
  @JsonValue("Spotify")
  spotify
}

final displayNameValues = EnumValues({"Spotify": DisplayName.spotify});

enum Id {
  @JsonValue("spotify")
  spotify
}

final idValues = EnumValues({"spotify": Id.spotify});

enum OwnerType {
  @JsonValue("user")
  user
}

final ownerTypeValues = EnumValues({"user": OwnerType.user});

enum SpotifyUri {
  @JsonValue("spotify:user:spotify")
  spotifyUserSpotify
}

final uriValues =
    EnumValues({"spotify:user:spotify": SpotifyUri.spotifyUserSpotify});

@freezed
class Tracks with _$Tracks {
  const factory Tracks({
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "total") required int total,
  }) = _Tracks;

  factory Tracks.fromJson(Map<String, dynamic> json) => _$TracksFromJson(json);
}

enum ItemType {
  @JsonValue("playlist")
  playlist
}

final itemTypeValues = EnumValues({"playlist": ItemType.playlist});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
