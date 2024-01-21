// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_playlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyPlaylistImpl _$$SpotifyPlaylistImplFromJson(
  Map<String, dynamic> json,
) =>
    _$SpotifyPlaylistImpl(
      collaborative: json['collaborative'] as bool,
      description: json['description'] as String,
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      followers: Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      primaryColor: json['primary_color'] as String?,
      public: json['public'] as bool,
      snapshotId: json['snapshot_id'] as String,
      tracks: Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      type: json['type'] as String,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$SpotifyPlaylistImplToJson(
  _$SpotifyPlaylistImpl instance,
) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'owner': instance.owner,
      'primary_color': instance.primaryColor,
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks,
      'type': instance.type,
      'uri': instance.uri,
    };

_$ExternalUrlsImpl _$$ExternalUrlsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalUrlsImpl(
      spotify: json['spotify'] as String,
    );

Map<String, dynamic> _$$ExternalUrlsImplToJson(_$ExternalUrlsImpl instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

_$FollowersImpl _$$FollowersImplFromJson(Map<String, dynamic> json) =>
    _$FollowersImpl(
      href: json['href'],
      total: json['total'] as int,
    );

Map<String, dynamic> _$$FollowersImplToJson(_$FollowersImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      height: json['height'] as int?,
      url: json['url'] as String,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'url': instance.url,
      'width': instance.width,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      displayName: json['display_name'] as String?,
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      type: $enumDecode(_$OwnerTypeEnumMap, json['type']),
      uri: json['uri'] as String,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'display_name': instance.displayName,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'type': _$OwnerTypeEnumMap[instance.type]!,
      'uri': instance.uri,
      'name': instance.name,
    };

const _$OwnerTypeEnumMap = {
  OwnerType.artist: 'artist',
  OwnerType.track: 'track',
  OwnerType.user: 'user',
};

_$TracksImpl _$$TracksImplFromJson(Map<String, dynamic> json) => _$TracksImpl(
      href: json['href'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      limit: json['limit'] as int,
      next: json['next'],
      offset: json['offset'] as int,
      previous: json['previous'],
      total: json['total'] as int,
    );

Map<String, dynamic> _$$TracksImplToJson(_$TracksImpl instance) =>
    <String, dynamic>{
      'href': instance.href,
      'items': instance.items,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
    };

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      addedAt: DateTime.parse(json['added_at'] as String),
      addedBy: Owner.fromJson(json['added_by'] as Map<String, dynamic>),
      isLocal: json['is_local'] as bool,
      primaryColor: json['primary_color'],
      track: Track.fromJson(json['track'] as Map<String, dynamic>),
      videoThumbnail: VideoThumbnail.fromJson(
        json['video_thumbnail'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'added_at': instance.addedAt.toIso8601String(),
      'added_by': instance.addedBy,
      'is_local': instance.isLocal,
      'primary_color': instance.primaryColor,
      'track': instance.track,
      'video_thumbnail': instance.videoThumbnail,
    };

_$TrackImpl _$$TrackImplFromJson(Map<String, dynamic> json) => _$TrackImpl(
      album: Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Owner.fromJson(e as Map<String, dynamic>))
          .toList(),
      discNumber: json['disc_number'] as int,
      durationMs: json['duration_ms'] as int,
      episode: json['episode'] as bool,
      explicit: json['explicit'] as bool,
      externalIds:
          ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      isLocal: json['is_local'] as bool,
      isPlayable: json['is_playable'] as bool,
      linkedFrom: json['linked_from'] == null
          ? null
          : Owner.fromJson(json['linked_from'] as Map<String, dynamic>),
      name: json['name'] as String,
      popularity: json['popularity'] as int,
      previewUrl: json['preview_url'] as String?,
      track: json['track'] as bool,
      trackNumber: json['track_number'] as int,
      type: $enumDecode(_$OwnerTypeEnumMap, json['type']),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$TrackImplToJson(_$TrackImpl instance) =>
    <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'episode': instance.episode,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'is_local': instance.isLocal,
      'is_playable': instance.isPlayable,
      'linked_from': instance.linkedFrom,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track': instance.track,
      'track_number': instance.trackNumber,
      'type': _$OwnerTypeEnumMap[instance.type]!,
      'uri': instance.uri,
    };

_$AlbumImpl _$$AlbumImplFromJson(Map<String, dynamic> json) => _$AlbumImpl(
      albumType: $enumDecode(_$AlbumTypeEnumEnumMap, json['album_type']),
      artists: (json['artists'] as List<dynamic>)
          .map((e) => Owner.fromJson(e as Map<String, dynamic>))
          .toList(),
      externalUrls:
          ExternalUrls.fromJson(json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String,
      id: json['id'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPlayable: json['is_playable'] as bool,
      name: json['name'] as String,
      releaseDate: json['release_date'] as String,
      releaseDatePrecision: json['release_date_precision'] as String,
      totalTracks: json['total_tracks'] as int,
      type: $enumDecode(_$AlbumTypeEnumEnumMap, json['type']),
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$$AlbumImplToJson(_$AlbumImpl instance) =>
    <String, dynamic>{
      'album_type': _$AlbumTypeEnumEnumMap[instance.albumType]!,
      'artists': instance.artists,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'is_playable': instance.isPlayable,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'total_tracks': instance.totalTracks,
      'type': _$AlbumTypeEnumEnumMap[instance.type]!,
      'uri': instance.uri,
    };

const _$AlbumTypeEnumEnumMap = {
  AlbumTypeEnum.album: 'album',
  AlbumTypeEnum.compilation: 'compilation',
  AlbumTypeEnum.single: 'single',
};

_$ExternalIdsImpl _$$ExternalIdsImplFromJson(Map<String, dynamic> json) =>
    _$ExternalIdsImpl(
      isrc: json['isrc'] as String?,
    );

Map<String, dynamic> _$$ExternalIdsImplToJson(_$ExternalIdsImpl instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
    };

_$VideoThumbnailImpl _$$VideoThumbnailImplFromJson(Map<String, dynamic> json) =>
    _$VideoThumbnailImpl(
      url: json['url'],
    );

Map<String, dynamic> _$$VideoThumbnailImplToJson(
  _$VideoThumbnailImpl instance,
) =>
    <String, dynamic>{
      'url': instance.url,
    };
