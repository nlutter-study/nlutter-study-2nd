// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_featured_playlists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyFeaturedPlaylistsImpl _$$SpotifyFeaturedPlaylistsImplFromJson(
  Map<String, dynamic> json,
) =>
    _$SpotifyFeaturedPlaylistsImpl(
      message: json['message'] as String,
      playlists: Playlists.fromJson(json['playlists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpotifyFeaturedPlaylistsImplToJson(
  _$SpotifyFeaturedPlaylistsImpl instance,
) =>
    <String, dynamic>{
      'message': instance.message,
      'playlists': instance.playlists,
    };

_$PlaylistsImpl _$$PlaylistsImplFromJson(Map<String, dynamic> json) =>
    _$PlaylistsImpl(
      href: json['href'] as String,
      items: (json['items'] as List<dynamic>)
          .map(
            (e) =>
                SpotifySimplifiedPlaylist.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      limit: json['limit'] as int,
      next: json['next'],
      offset: json['offset'] as int,
      previous: json['previous'],
      total: json['total'] as int,
    );

Map<String, dynamic> _$$PlaylistsImplToJson(_$PlaylistsImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$SpotifySimplifiedPlaylistImpl _$$SpotifySimplifiedPlaylistImplFromJson(
  Map<String, dynamic> json,
) =>
    _$SpotifySimplifiedPlaylistImpl(
      collaborative: json['collaborative'] as bool,
      description: json['description'] as String,
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      primaryColor: json['primary_color'],
      public: json['public'],
      snapshotId: json['snapshot_id'] as String,
      tracks: Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      type: $enumDecode(_$ItemTypeEnumMap, json['type']),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$SpotifySimplifiedPlaylistImplToJson(
  _$SpotifySimplifiedPlaylistImpl instance,
) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'owner': instance.owner,
      'primary_color': instance.primaryColor,
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks,
      'type': _$ItemTypeEnumMap[instance.type]!,
      'uri': instance.uri,
    };

const _$ItemTypeEnumMap = {
  ItemType.PLAYLIST: 'playlist',
};

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      spotify: json['spotify'] as String,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      height: json['height'],
      url: json['url'] as String,
      width: json['width'],
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      displayName: $enumDecode(_$DisplayNameEnumMap, json['display_name']),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: $enumDecode(_$IdEnumMap, json['id']),
      type: $enumDecode(_$OwnerTypeEnumMap, json['type']),
      uri: $enumDecode(_$UriEnumMap, json['uri']),
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'display_name': _$DisplayNameEnumMap[instance.displayName]!,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': _$IdEnumMap[instance.id]!,
      'type': _$OwnerTypeEnumMap[instance.type]!,
      'uri': _$UriEnumMap[instance.uri]!,
    };

const _$DisplayNameEnumMap = {
  DisplayName.SPOTIFY: 'Spotify',
};

const _$IdEnumMap = {
  Id.SPOTIFY: 'spotify',
};

const _$OwnerTypeEnumMap = {
  OwnerType.USER: 'user',
};

const _$UriEnumMap = {
  SpotifyUri.SPOTIFY_USER_SPOTIFY: 'spotify:user:spotify',
};

_$TracksImpl _$$TracksImplFromJson(Map<String, dynamic> json) => _$TracksImpl(
      href: json['href'] as String,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$TracksImplToJson(_$TracksImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };
