// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_playlist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpotifyPlaylist _$SpotifyPlaylistFromJson(Map<String, dynamic> json) {
  return _SpotifyPlaylist.fromJson(json);
}

/// @nodoc
mixin _$SpotifyPlaylist {
  @JsonKey(name: "collaborative")
  bool get collaborative => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "followers")
  Followers get followers => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image> get images => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "owner")
  Owner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_color")
  String? get primaryColor => throw _privateConstructorUsedError;
  @JsonKey(name: "public")
  bool get public => throw _privateConstructorUsedError;
  @JsonKey(name: "snapshot_id")
  String get snapshotId => throw _privateConstructorUsedError;
  @JsonKey(name: "tracks")
  Tracks get tracks => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyPlaylistCopyWith<SpotifyPlaylist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyPlaylistCopyWith<$Res> {
  factory $SpotifyPlaylistCopyWith(
          SpotifyPlaylist value, $Res Function(SpotifyPlaylist) then) =
      _$SpotifyPlaylistCopyWithImpl<$Res, SpotifyPlaylist>;
  @useResult
  $Res call(
      {@JsonKey(name: "collaborative") bool collaborative,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "followers") Followers followers,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "owner") Owner owner,
      @JsonKey(name: "primary_color") String? primaryColor,
      @JsonKey(name: "public") bool public,
      @JsonKey(name: "snapshot_id") String snapshotId,
      @JsonKey(name: "tracks") Tracks tracks,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
  $FollowersCopyWith<$Res> get followers;
  $OwnerCopyWith<$Res> get owner;
  $TracksCopyWith<$Res> get tracks;
}

/// @nodoc
class _$SpotifyPlaylistCopyWithImpl<$Res, $Val extends SpotifyPlaylist>
    implements $SpotifyPlaylistCopyWith<$Res> {
  _$SpotifyPlaylistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collaborative = null,
    Object? description = null,
    Object? externalUrls = null,
    Object? followers = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? owner = null,
    Object? primaryColor = freezed,
    Object? public = null,
    Object? snapshotId = null,
    Object? tracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      collaborative: null == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      primaryColor: freezed == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      snapshotId: null == snapshotId
          ? _value.snapshotId
          : snapshotId // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FollowersCopyWith<$Res> get followers {
    return $FollowersCopyWith<$Res>(_value.followers, (value) {
      return _then(_value.copyWith(followers: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TracksCopyWith<$Res> get tracks {
    return $TracksCopyWith<$Res>(_value.tracks, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotifyPlaylistImplCopyWith<$Res>
    implements $SpotifyPlaylistCopyWith<$Res> {
  factory _$$SpotifyPlaylistImplCopyWith(_$SpotifyPlaylistImpl value,
          $Res Function(_$SpotifyPlaylistImpl) then) =
      __$$SpotifyPlaylistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "collaborative") bool collaborative,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "followers") Followers followers,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "owner") Owner owner,
      @JsonKey(name: "primary_color") String? primaryColor,
      @JsonKey(name: "public") bool public,
      @JsonKey(name: "snapshot_id") String snapshotId,
      @JsonKey(name: "tracks") Tracks tracks,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  @override
  $FollowersCopyWith<$Res> get followers;
  @override
  $OwnerCopyWith<$Res> get owner;
  @override
  $TracksCopyWith<$Res> get tracks;
}

/// @nodoc
class __$$SpotifyPlaylistImplCopyWithImpl<$Res>
    extends _$SpotifyPlaylistCopyWithImpl<$Res, _$SpotifyPlaylistImpl>
    implements _$$SpotifyPlaylistImplCopyWith<$Res> {
  __$$SpotifyPlaylistImplCopyWithImpl(
      _$SpotifyPlaylistImpl _value, $Res Function(_$SpotifyPlaylistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collaborative = null,
    Object? description = null,
    Object? externalUrls = null,
    Object? followers = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? owner = null,
    Object? primaryColor = freezed,
    Object? public = null,
    Object? snapshotId = null,
    Object? tracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$SpotifyPlaylistImpl(
      collaborative: null == collaborative
          ? _value.collaborative
          : collaborative // ignore: cast_nullable_to_non_nullable
              as bool,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as Followers,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      primaryColor: freezed == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as String?,
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      snapshotId: null == snapshotId
          ? _value.snapshotId
          : snapshotId // ignore: cast_nullable_to_non_nullable
              as String,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as Tracks,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyPlaylistImpl implements _SpotifyPlaylist {
  const _$SpotifyPlaylistImpl(
      {@JsonKey(name: "collaborative") required this.collaborative,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "followers") required this.followers,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "owner") required this.owner,
      @JsonKey(name: "primary_color") this.primaryColor,
      @JsonKey(name: "public") required this.public,
      @JsonKey(name: "snapshot_id") required this.snapshotId,
      @JsonKey(name: "tracks") required this.tracks,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri})
      : _images = images;

  factory _$SpotifyPlaylistImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyPlaylistImplFromJson(json);

  @override
  @JsonKey(name: "collaborative")
  final bool collaborative;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "followers")
  final Followers followers;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final String id;
  final List<Image> _images;
  @override
  @JsonKey(name: "images")
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "owner")
  final Owner owner;
  @override
  @JsonKey(name: "primary_color")
  final String? primaryColor;
  @override
  @JsonKey(name: "public")
  final bool public;
  @override
  @JsonKey(name: "snapshot_id")
  final String snapshotId;
  @override
  @JsonKey(name: "tracks")
  final Tracks tracks;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'SpotifyPlaylist(collaborative: $collaborative, description: $description, externalUrls: $externalUrls, followers: $followers, href: $href, id: $id, images: $images, name: $name, owner: $owner, primaryColor: $primaryColor, public: $public, snapshotId: $snapshotId, tracks: $tracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyPlaylistImpl &&
            (identical(other.collaborative, collaborative) ||
                other.collaborative == collaborative) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.primaryColor, primaryColor) ||
                other.primaryColor == primaryColor) &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.snapshotId, snapshotId) ||
                other.snapshotId == snapshotId) &&
            (identical(other.tracks, tracks) || other.tracks == tracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collaborative,
      description,
      externalUrls,
      followers,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      owner,
      primaryColor,
      public,
      snapshotId,
      tracks,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyPlaylistImplCopyWith<_$SpotifyPlaylistImpl> get copyWith =>
      __$$SpotifyPlaylistImplCopyWithImpl<_$SpotifyPlaylistImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyPlaylistImplToJson(
      this,
    );
  }
}

abstract class _SpotifyPlaylist implements SpotifyPlaylist {
  const factory _SpotifyPlaylist(
      {@JsonKey(name: "collaborative") required final bool collaborative,
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "followers") required final Followers followers,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "owner") required final Owner owner,
      @JsonKey(name: "primary_color") final String? primaryColor,
      @JsonKey(name: "public") required final bool public,
      @JsonKey(name: "snapshot_id") required final String snapshotId,
      @JsonKey(name: "tracks") required final Tracks tracks,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "uri") required final String uri}) = _$SpotifyPlaylistImpl;

  factory _SpotifyPlaylist.fromJson(Map<String, dynamic> json) =
      _$SpotifyPlaylistImpl.fromJson;

  @override
  @JsonKey(name: "collaborative")
  bool get collaborative;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "followers")
  Followers get followers;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "images")
  List<Image> get images;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "owner")
  Owner get owner;
  @override
  @JsonKey(name: "primary_color")
  String? get primaryColor;
  @override
  @JsonKey(name: "public")
  bool get public;
  @override
  @JsonKey(name: "snapshot_id")
  String get snapshotId;
  @override
  @JsonKey(name: "tracks")
  Tracks get tracks;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyPlaylistImplCopyWith<_$SpotifyPlaylistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrls {
  @JsonKey(name: "spotify")
  String get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsCopyWith<ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsCopyWith<$Res> {
  factory $ExternalUrlsCopyWith(
          ExternalUrls value, $Res Function(ExternalUrls) then) =
      _$ExternalUrlsCopyWithImpl<$Res, ExternalUrls>;
  @useResult
  $Res call({@JsonKey(name: "spotify") String spotify});
}

/// @nodoc
class _$ExternalUrlsCopyWithImpl<$Res, $Val extends ExternalUrls>
    implements $ExternalUrlsCopyWith<$Res> {
  _$ExternalUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_value.copyWith(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "spotify") String spotify});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_$ExternalUrlsImpl(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl({@JsonKey(name: "spotify") required this.spotify});

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  @JsonKey(name: "spotify")
  final String spotify;

  @override
  String toString() {
    return 'ExternalUrls(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls(
          {@JsonKey(name: "spotify") required final String spotify}) =
      _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  @JsonKey(name: "spotify")
  String get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Followers _$FollowersFromJson(Map<String, dynamic> json) {
  return _Followers.fromJson(json);
}

/// @nodoc
mixin _$Followers {
  @JsonKey(name: "href")
  dynamic get href => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FollowersCopyWith<Followers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowersCopyWith<$Res> {
  factory $FollowersCopyWith(Followers value, $Res Function(Followers) then) =
      _$FollowersCopyWithImpl<$Res, Followers>;
  @useResult
  $Res call(
      {@JsonKey(name: "href") dynamic href, @JsonKey(name: "total") int total});
}

/// @nodoc
class _$FollowersCopyWithImpl<$Res, $Val extends Followers>
    implements $FollowersCopyWith<$Res> {
  _$FollowersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowersImplCopyWith<$Res>
    implements $FollowersCopyWith<$Res> {
  factory _$$FollowersImplCopyWith(
          _$FollowersImpl value, $Res Function(_$FollowersImpl) then) =
      __$$FollowersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "href") dynamic href, @JsonKey(name: "total") int total});
}

/// @nodoc
class __$$FollowersImplCopyWithImpl<$Res>
    extends _$FollowersCopyWithImpl<$Res, _$FollowersImpl>
    implements _$$FollowersImplCopyWith<$Res> {
  __$$FollowersImplCopyWithImpl(
      _$FollowersImpl _value, $Res Function(_$FollowersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
    Object? total = null,
  }) {
    return _then(_$FollowersImpl(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowersImpl implements _Followers {
  const _$FollowersImpl(
      {@JsonKey(name: "href") required this.href,
      @JsonKey(name: "total") required this.total});

  factory _$FollowersImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowersImplFromJson(json);

  @override
  @JsonKey(name: "href")
  final dynamic href;
  @override
  @JsonKey(name: "total")
  final int total;

  @override
  String toString() {
    return 'Followers(href: $href, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowersImpl &&
            const DeepCollectionEquality().equals(other.href, href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(href), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowersImplCopyWith<_$FollowersImpl> get copyWith =>
      __$$FollowersImplCopyWithImpl<_$FollowersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowersImplToJson(
      this,
    );
  }
}

abstract class _Followers implements Followers {
  const factory _Followers(
      {@JsonKey(name: "href") required final dynamic href,
      @JsonKey(name: "total") required final int total}) = _$FollowersImpl;

  factory _Followers.fromJson(Map<String, dynamic> json) =
      _$FollowersImpl.fromJson;

  @override
  @JsonKey(name: "href")
  dynamic get href;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$FollowersImplCopyWith<_$FollowersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "height")
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: "height") int? height,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "width") int? width});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = null,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "height") int? height,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "width") int? width});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? url = null,
    Object? width = freezed,
  }) {
    return _then(_$ImageImpl(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: "height") required this.height,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "width") required this.width});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "height")
  final int? height;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "width")
  final int? width;

  @override
  String toString() {
    return 'Image(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: "height") required final int? height,
      @JsonKey(name: "url") required final String url,
      @JsonKey(name: "width") required final int? width}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "height")
  int? get height;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "width")
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
  @JsonKey(name: "display_name")
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  OwnerType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call(
      {@JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "type") OwnerType type,
      @JsonKey(name: "uri") String uri,
      @JsonKey(name: "name") String? name});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? type = null,
    Object? uri = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OwnerType,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "display_name") String? displayName,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "type") OwnerType type,
      @JsonKey(name: "uri") String uri,
      @JsonKey(name: "name") String? name});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? displayName = freezed,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? type = null,
    Object? uri = null,
    Object? name = freezed,
  }) {
    return _then(_$OwnerImpl(
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OwnerType,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  const _$OwnerImpl(
      {@JsonKey(name: "display_name") this.displayName,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri,
      @JsonKey(name: "name") this.name});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  @JsonKey(name: "display_name")
  final String? displayName;
  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "type")
  final OwnerType type;
  @override
  @JsonKey(name: "uri")
  final String uri;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'Owner(displayName: $displayName, externalUrls: $externalUrls, href: $href, id: $id, type: $type, uri: $uri, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, displayName, externalUrls, href, id, type, uri, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner implements Owner {
  const factory _Owner(
      {@JsonKey(name: "display_name") final String? displayName,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "type") required final OwnerType type,
      @JsonKey(name: "uri") required final String uri,
      @JsonKey(name: "name") final String? name}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  @JsonKey(name: "display_name")
  String? get displayName;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "type")
  OwnerType get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tracks _$TracksFromJson(Map<String, dynamic> json) {
  return _Tracks.fromJson(json);
}

/// @nodoc
mixin _$Tracks {
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "items")
  List<Item> get items => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "next")
  dynamic get next => throw _privateConstructorUsedError;
  @JsonKey(name: "offset")
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: "previous")
  dynamic get previous => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TracksCopyWith<Tracks> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TracksCopyWith<$Res> {
  factory $TracksCopyWith(Tracks value, $Res Function(Tracks) then) =
      _$TracksCopyWithImpl<$Res, Tracks>;
  @useResult
  $Res call(
      {@JsonKey(name: "href") String href,
      @JsonKey(name: "items") List<Item> items,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "offset") int offset,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class _$TracksCopyWithImpl<$Res, $Val extends Tracks>
    implements $TracksCopyWith<$Res> {
  _$TracksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? items = null,
    Object? limit = null,
    Object? next = freezed,
    Object? offset = null,
    Object? previous = freezed,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TracksImplCopyWith<$Res> implements $TracksCopyWith<$Res> {
  factory _$$TracksImplCopyWith(
          _$TracksImpl value, $Res Function(_$TracksImpl) then) =
      __$$TracksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "href") String href,
      @JsonKey(name: "items") List<Item> items,
      @JsonKey(name: "limit") int limit,
      @JsonKey(name: "next") dynamic next,
      @JsonKey(name: "offset") int offset,
      @JsonKey(name: "previous") dynamic previous,
      @JsonKey(name: "total") int total});
}

/// @nodoc
class __$$TracksImplCopyWithImpl<$Res>
    extends _$TracksCopyWithImpl<$Res, _$TracksImpl>
    implements _$$TracksImplCopyWith<$Res> {
  __$$TracksImplCopyWithImpl(
      _$TracksImpl _value, $Res Function(_$TracksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? items = null,
    Object? limit = null,
    Object? next = freezed,
    Object? offset = null,
    Object? previous = freezed,
    Object? total = null,
  }) {
    return _then(_$TracksImpl(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as dynamic,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TracksImpl implements _Tracks {
  const _$TracksImpl(
      {@JsonKey(name: "href") required this.href,
      @JsonKey(name: "items") required final List<Item> items,
      @JsonKey(name: "limit") required this.limit,
      @JsonKey(name: "next") required this.next,
      @JsonKey(name: "offset") required this.offset,
      @JsonKey(name: "previous") required this.previous,
      @JsonKey(name: "total") required this.total})
      : _items = items;

  factory _$TracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$TracksImplFromJson(json);

  @override
  @JsonKey(name: "href")
  final String href;
  final List<Item> _items;
  @override
  @JsonKey(name: "items")
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: "limit")
  final int limit;
  @override
  @JsonKey(name: "next")
  final dynamic next;
  @override
  @JsonKey(name: "offset")
  final int offset;
  @override
  @JsonKey(name: "previous")
  final dynamic previous;
  @override
  @JsonKey(name: "total")
  final int total;

  @override
  String toString() {
    return 'Tracks(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracksImpl &&
            (identical(other.href, href) || other.href == href) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      href,
      const DeepCollectionEquality().hash(_items),
      limit,
      const DeepCollectionEquality().hash(next),
      offset,
      const DeepCollectionEquality().hash(previous),
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TracksImplCopyWith<_$TracksImpl> get copyWith =>
      __$$TracksImplCopyWithImpl<_$TracksImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TracksImplToJson(
      this,
    );
  }
}

abstract class _Tracks implements Tracks {
  const factory _Tracks(
      {@JsonKey(name: "href") required final String href,
      @JsonKey(name: "items") required final List<Item> items,
      @JsonKey(name: "limit") required final int limit,
      @JsonKey(name: "next") required final dynamic next,
      @JsonKey(name: "offset") required final int offset,
      @JsonKey(name: "previous") required final dynamic previous,
      @JsonKey(name: "total") required final int total}) = _$TracksImpl;

  factory _Tracks.fromJson(Map<String, dynamic> json) = _$TracksImpl.fromJson;

  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "items")
  List<Item> get items;
  @override
  @JsonKey(name: "limit")
  int get limit;
  @override
  @JsonKey(name: "next")
  dynamic get next;
  @override
  @JsonKey(name: "offset")
  int get offset;
  @override
  @JsonKey(name: "previous")
  dynamic get previous;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$TracksImplCopyWith<_$TracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "added_at")
  DateTime get addedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "added_by")
  Owner get addedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "is_local")
  bool get isLocal => throw _privateConstructorUsedError;
  @JsonKey(name: "primary_color")
  dynamic get primaryColor => throw _privateConstructorUsedError;
  @JsonKey(name: "track")
  Track get track => throw _privateConstructorUsedError;
  @JsonKey(name: "video_thumbnail")
  VideoThumbnail get videoThumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@JsonKey(name: "added_at") DateTime addedAt,
      @JsonKey(name: "added_by") Owner addedBy,
      @JsonKey(name: "is_local") bool isLocal,
      @JsonKey(name: "primary_color") dynamic primaryColor,
      @JsonKey(name: "track") Track track,
      @JsonKey(name: "video_thumbnail") VideoThumbnail videoThumbnail});

  $OwnerCopyWith<$Res> get addedBy;
  $TrackCopyWith<$Res> get track;
  $VideoThumbnailCopyWith<$Res> get videoThumbnail;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedAt = null,
    Object? addedBy = null,
    Object? isLocal = null,
    Object? primaryColor = freezed,
    Object? track = null,
    Object? videoThumbnail = null,
  }) {
    return _then(_value.copyWith(
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as Owner,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryColor: freezed == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      videoThumbnail: null == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as VideoThumbnail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get addedBy {
    return $OwnerCopyWith<$Res>(_value.addedBy, (value) {
      return _then(_value.copyWith(addedBy: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackCopyWith<$Res> get track {
    return $TrackCopyWith<$Res>(_value.track, (value) {
      return _then(_value.copyWith(track: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoThumbnailCopyWith<$Res> get videoThumbnail {
    return $VideoThumbnailCopyWith<$Res>(_value.videoThumbnail, (value) {
      return _then(_value.copyWith(videoThumbnail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "added_at") DateTime addedAt,
      @JsonKey(name: "added_by") Owner addedBy,
      @JsonKey(name: "is_local") bool isLocal,
      @JsonKey(name: "primary_color") dynamic primaryColor,
      @JsonKey(name: "track") Track track,
      @JsonKey(name: "video_thumbnail") VideoThumbnail videoThumbnail});

  @override
  $OwnerCopyWith<$Res> get addedBy;
  @override
  $TrackCopyWith<$Res> get track;
  @override
  $VideoThumbnailCopyWith<$Res> get videoThumbnail;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedAt = null,
    Object? addedBy = null,
    Object? isLocal = null,
    Object? primaryColor = freezed,
    Object? track = null,
    Object? videoThumbnail = null,
  }) {
    return _then(_$ItemImpl(
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      addedBy: null == addedBy
          ? _value.addedBy
          : addedBy // ignore: cast_nullable_to_non_nullable
              as Owner,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryColor: freezed == primaryColor
          ? _value.primaryColor
          : primaryColor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as Track,
      videoThumbnail: null == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as VideoThumbnail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {@JsonKey(name: "added_at") required this.addedAt,
      @JsonKey(name: "added_by") required this.addedBy,
      @JsonKey(name: "is_local") required this.isLocal,
      @JsonKey(name: "primary_color") required this.primaryColor,
      @JsonKey(name: "track") required this.track,
      @JsonKey(name: "video_thumbnail") required this.videoThumbnail});

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @JsonKey(name: "added_at")
  final DateTime addedAt;
  @override
  @JsonKey(name: "added_by")
  final Owner addedBy;
  @override
  @JsonKey(name: "is_local")
  final bool isLocal;
  @override
  @JsonKey(name: "primary_color")
  final dynamic primaryColor;
  @override
  @JsonKey(name: "track")
  final Track track;
  @override
  @JsonKey(name: "video_thumbnail")
  final VideoThumbnail videoThumbnail;

  @override
  String toString() {
    return 'Item(addedAt: $addedAt, addedBy: $addedBy, isLocal: $isLocal, primaryColor: $primaryColor, track: $track, videoThumbnail: $videoThumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.addedBy, addedBy) || other.addedBy == addedBy) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal) &&
            const DeepCollectionEquality()
                .equals(other.primaryColor, primaryColor) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.videoThumbnail, videoThumbnail) ||
                other.videoThumbnail == videoThumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addedAt, addedBy, isLocal,
      const DeepCollectionEquality().hash(primaryColor), track, videoThumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {@JsonKey(name: "added_at") required final DateTime addedAt,
      @JsonKey(name: "added_by") required final Owner addedBy,
      @JsonKey(name: "is_local") required final bool isLocal,
      @JsonKey(name: "primary_color") required final dynamic primaryColor,
      @JsonKey(name: "track") required final Track track,
      @JsonKey(name: "video_thumbnail")
      required final VideoThumbnail videoThumbnail}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @JsonKey(name: "added_at")
  DateTime get addedAt;
  @override
  @JsonKey(name: "added_by")
  Owner get addedBy;
  @override
  @JsonKey(name: "is_local")
  bool get isLocal;
  @override
  @JsonKey(name: "primary_color")
  dynamic get primaryColor;
  @override
  @JsonKey(name: "track")
  Track get track;
  @override
  @JsonKey(name: "video_thumbnail")
  VideoThumbnail get videoThumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Track _$TrackFromJson(Map<String, dynamic> json) {
  return _Track.fromJson(json);
}

/// @nodoc
mixin _$Track {
  @JsonKey(name: "album")
  Album get album => throw _privateConstructorUsedError;
  @JsonKey(name: "artists")
  List<Owner> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_number")
  int get discNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "duration_ms")
  int get durationMs => throw _privateConstructorUsedError;
  @JsonKey(name: "episode")
  bool get episode => throw _privateConstructorUsedError;
  @JsonKey(name: "explicit")
  bool get explicit => throw _privateConstructorUsedError;
  @JsonKey(name: "external_ids")
  ExternalIds get externalIds => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_local")
  bool get isLocal => throw _privateConstructorUsedError;
  @JsonKey(name: "is_playable")
  bool get isPlayable => throw _privateConstructorUsedError;
  @JsonKey(name: "linked_from")
  Owner? get linkedFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  int get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "preview_url")
  String? get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "track")
  bool get track => throw _privateConstructorUsedError;
  @JsonKey(name: "track_number")
  int get trackNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  OwnerType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackCopyWith<Track> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackCopyWith<$Res> {
  factory $TrackCopyWith(Track value, $Res Function(Track) then) =
      _$TrackCopyWithImpl<$Res, Track>;
  @useResult
  $Res call(
      {@JsonKey(name: "album") Album album,
      @JsonKey(name: "artists") List<Owner> artists,
      @JsonKey(name: "disc_number") int discNumber,
      @JsonKey(name: "duration_ms") int durationMs,
      @JsonKey(name: "episode") bool episode,
      @JsonKey(name: "explicit") bool explicit,
      @JsonKey(name: "external_ids") ExternalIds externalIds,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "is_local") bool isLocal,
      @JsonKey(name: "is_playable") bool isPlayable,
      @JsonKey(name: "linked_from") Owner? linkedFrom,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "popularity") int popularity,
      @JsonKey(name: "preview_url") String? previewUrl,
      @JsonKey(name: "track") bool track,
      @JsonKey(name: "track_number") int trackNumber,
      @JsonKey(name: "type") OwnerType type,
      @JsonKey(name: "uri") String uri});

  $AlbumCopyWith<$Res> get album;
  $ExternalIdsCopyWith<$Res> get externalIds;
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  $OwnerCopyWith<$Res>? get linkedFrom;
}

/// @nodoc
class _$TrackCopyWithImpl<$Res, $Val extends Track>
    implements $TrackCopyWith<$Res> {
  _$TrackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? episode = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? isLocal = null,
    Object? isPlayable = null,
    Object? linkedFrom = freezed,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = freezed,
    Object? track = null,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as bool,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlayable: null == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedFrom: freezed == linkedFrom
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as Owner?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as bool,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OwnerType,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res> get externalIds {
    return $ExternalIdsCopyWith<$Res>(_value.externalIds, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res>? get linkedFrom {
    if (_value.linkedFrom == null) {
      return null;
    }

    return $OwnerCopyWith<$Res>(_value.linkedFrom!, (value) {
      return _then(_value.copyWith(linkedFrom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackImplCopyWith<$Res> implements $TrackCopyWith<$Res> {
  factory _$$TrackImplCopyWith(
          _$TrackImpl value, $Res Function(_$TrackImpl) then) =
      __$$TrackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "album") Album album,
      @JsonKey(name: "artists") List<Owner> artists,
      @JsonKey(name: "disc_number") int discNumber,
      @JsonKey(name: "duration_ms") int durationMs,
      @JsonKey(name: "episode") bool episode,
      @JsonKey(name: "explicit") bool explicit,
      @JsonKey(name: "external_ids") ExternalIds externalIds,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "is_local") bool isLocal,
      @JsonKey(name: "is_playable") bool isPlayable,
      @JsonKey(name: "linked_from") Owner? linkedFrom,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "popularity") int popularity,
      @JsonKey(name: "preview_url") String? previewUrl,
      @JsonKey(name: "track") bool track,
      @JsonKey(name: "track_number") int trackNumber,
      @JsonKey(name: "type") OwnerType type,
      @JsonKey(name: "uri") String uri});

  @override
  $AlbumCopyWith<$Res> get album;
  @override
  $ExternalIdsCopyWith<$Res> get externalIds;
  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  @override
  $OwnerCopyWith<$Res>? get linkedFrom;
}

/// @nodoc
class __$$TrackImplCopyWithImpl<$Res>
    extends _$TrackCopyWithImpl<$Res, _$TrackImpl>
    implements _$$TrackImplCopyWith<$Res> {
  __$$TrackImplCopyWithImpl(
      _$TrackImpl _value, $Res Function(_$TrackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? episode = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? isLocal = null,
    Object? isPlayable = null,
    Object? linkedFrom = freezed,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = freezed,
    Object? track = null,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$TrackImpl(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as bool,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      isPlayable: null == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      linkedFrom: freezed == linkedFrom
          ? _value.linkedFrom
          : linkedFrom // ignore: cast_nullable_to_non_nullable
              as Owner?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      track: null == track
          ? _value.track
          : track // ignore: cast_nullable_to_non_nullable
              as bool,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OwnerType,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackImpl implements _Track {
  const _$TrackImpl(
      {@JsonKey(name: "album") required this.album,
      @JsonKey(name: "artists") required final List<Owner> artists,
      @JsonKey(name: "disc_number") required this.discNumber,
      @JsonKey(name: "duration_ms") required this.durationMs,
      @JsonKey(name: "episode") required this.episode,
      @JsonKey(name: "explicit") required this.explicit,
      @JsonKey(name: "external_ids") required this.externalIds,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "is_local") required this.isLocal,
      @JsonKey(name: "is_playable") required this.isPlayable,
      @JsonKey(name: "linked_from") this.linkedFrom,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "popularity") required this.popularity,
      @JsonKey(name: "preview_url") required this.previewUrl,
      @JsonKey(name: "track") required this.track,
      @JsonKey(name: "track_number") required this.trackNumber,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri})
      : _artists = artists;

  factory _$TrackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackImplFromJson(json);

  @override
  @JsonKey(name: "album")
  final Album album;
  final List<Owner> _artists;
  @override
  @JsonKey(name: "artists")
  List<Owner> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  @JsonKey(name: "disc_number")
  final int discNumber;
  @override
  @JsonKey(name: "duration_ms")
  final int durationMs;
  @override
  @JsonKey(name: "episode")
  final bool episode;
  @override
  @JsonKey(name: "explicit")
  final bool explicit;
  @override
  @JsonKey(name: "external_ids")
  final ExternalIds externalIds;
  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "is_local")
  final bool isLocal;
  @override
  @JsonKey(name: "is_playable")
  final bool isPlayable;
  @override
  @JsonKey(name: "linked_from")
  final Owner? linkedFrom;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "popularity")
  final int popularity;
  @override
  @JsonKey(name: "preview_url")
  final String? previewUrl;
  @override
  @JsonKey(name: "track")
  final bool track;
  @override
  @JsonKey(name: "track_number")
  final int trackNumber;
  @override
  @JsonKey(name: "type")
  final OwnerType type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'Track(album: $album, artists: $artists, discNumber: $discNumber, durationMs: $durationMs, episode: $episode, explicit: $explicit, externalIds: $externalIds, externalUrls: $externalUrls, href: $href, id: $id, isLocal: $isLocal, isPlayable: $isPlayable, linkedFrom: $linkedFrom, name: $name, popularity: $popularity, previewUrl: $previewUrl, track: $track, trackNumber: $trackNumber, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackImpl &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal) &&
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.linkedFrom, linkedFrom) ||
                other.linkedFrom == linkedFrom) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.track, track) || other.track == track) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        album,
        const DeepCollectionEquality().hash(_artists),
        discNumber,
        durationMs,
        episode,
        explicit,
        externalIds,
        externalUrls,
        href,
        id,
        isLocal,
        isPlayable,
        linkedFrom,
        name,
        popularity,
        previewUrl,
        track,
        trackNumber,
        type,
        uri
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      __$$TrackImplCopyWithImpl<_$TrackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackImplToJson(
      this,
    );
  }
}

abstract class _Track implements Track {
  const factory _Track(
      {@JsonKey(name: "album") required final Album album,
      @JsonKey(name: "artists") required final List<Owner> artists,
      @JsonKey(name: "disc_number") required final int discNumber,
      @JsonKey(name: "duration_ms") required final int durationMs,
      @JsonKey(name: "episode") required final bool episode,
      @JsonKey(name: "explicit") required final bool explicit,
      @JsonKey(name: "external_ids") required final ExternalIds externalIds,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "is_local") required final bool isLocal,
      @JsonKey(name: "is_playable") required final bool isPlayable,
      @JsonKey(name: "linked_from") final Owner? linkedFrom,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "popularity") required final int popularity,
      @JsonKey(name: "preview_url") required final String? previewUrl,
      @JsonKey(name: "track") required final bool track,
      @JsonKey(name: "track_number") required final int trackNumber,
      @JsonKey(name: "type") required final OwnerType type,
      @JsonKey(name: "uri") required final String uri}) = _$TrackImpl;

  factory _Track.fromJson(Map<String, dynamic> json) = _$TrackImpl.fromJson;

  @override
  @JsonKey(name: "album")
  Album get album;
  @override
  @JsonKey(name: "artists")
  List<Owner> get artists;
  @override
  @JsonKey(name: "disc_number")
  int get discNumber;
  @override
  @JsonKey(name: "duration_ms")
  int get durationMs;
  @override
  @JsonKey(name: "episode")
  bool get episode;
  @override
  @JsonKey(name: "explicit")
  bool get explicit;
  @override
  @JsonKey(name: "external_ids")
  ExternalIds get externalIds;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "is_local")
  bool get isLocal;
  @override
  @JsonKey(name: "is_playable")
  bool get isPlayable;
  @override
  @JsonKey(name: "linked_from")
  Owner? get linkedFrom;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "popularity")
  int get popularity;
  @override
  @JsonKey(name: "preview_url")
  String? get previewUrl;
  @override
  @JsonKey(name: "track")
  bool get track;
  @override
  @JsonKey(name: "track_number")
  int get trackNumber;
  @override
  @JsonKey(name: "type")
  OwnerType get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$TrackImplCopyWith<_$TrackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  @JsonKey(name: "album_type")
  AlbumTypeEnum get albumType => throw _privateConstructorUsedError;
  @JsonKey(name: "artists")
  List<Owner> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image> get images => throw _privateConstructorUsedError;
  @JsonKey(name: "is_playable")
  bool get isPlayable => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date_precision")
  String get releaseDatePrecision => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tracks")
  int get totalTracks => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  AlbumTypeEnum get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {@JsonKey(name: "album_type") AlbumTypeEnum albumType,
      @JsonKey(name: "artists") List<Owner> artists,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "is_playable") bool isPlayable,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "release_date_precision") String releaseDatePrecision,
      @JsonKey(name: "total_tracks") int totalTracks,
      @JsonKey(name: "type") AlbumTypeEnum type,
      @JsonKey(name: "uri") String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? artists = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? isPlayable = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? totalTracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as AlbumTypeEnum,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      isPlayable: null == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlbumTypeEnum,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "album_type") AlbumTypeEnum albumType,
      @JsonKey(name: "artists") List<Owner> artists,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "is_playable") bool isPlayable,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "release_date_precision") String releaseDatePrecision,
      @JsonKey(name: "total_tracks") int totalTracks,
      @JsonKey(name: "type") AlbumTypeEnum type,
      @JsonKey(name: "uri") String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? artists = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? isPlayable = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? totalTracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$AlbumImpl(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as AlbumTypeEnum,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      isPlayable: null == isPlayable
          ? _value.isPlayable
          : isPlayable // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AlbumTypeEnum,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      {@JsonKey(name: "album_type") required this.albumType,
      @JsonKey(name: "artists") required final List<Owner> artists,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "is_playable") required this.isPlayable,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "release_date_precision")
      required this.releaseDatePrecision,
      @JsonKey(name: "total_tracks") required this.totalTracks,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri})
      : _artists = artists,
        _images = images;

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  @JsonKey(name: "album_type")
  final AlbumTypeEnum albumType;
  final List<Owner> _artists;
  @override
  @JsonKey(name: "artists")
  List<Owner> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final String id;
  final List<Image> _images;
  @override
  @JsonKey(name: "images")
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: "is_playable")
  final bool isPlayable;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  @JsonKey(name: "release_date_precision")
  final String releaseDatePrecision;
  @override
  @JsonKey(name: "total_tracks")
  final int totalTracks;
  @override
  @JsonKey(name: "type")
  final AlbumTypeEnum type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'Album(albumType: $albumType, artists: $artists, externalUrls: $externalUrls, href: $href, id: $id, images: $images, isPlayable: $isPlayable, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, totalTracks: $totalTracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isPlayable, isPlayable) ||
                other.isPlayable == isPlayable) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albumType,
      const DeepCollectionEquality().hash(_artists),
      externalUrls,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      isPlayable,
      name,
      releaseDate,
      releaseDatePrecision,
      totalTracks,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {@JsonKey(name: "album_type") required final AlbumTypeEnum albumType,
      @JsonKey(name: "artists") required final List<Owner> artists,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "is_playable") required final bool isPlayable,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "release_date") required final String releaseDate,
      @JsonKey(name: "release_date_precision")
      required final String releaseDatePrecision,
      @JsonKey(name: "total_tracks") required final int totalTracks,
      @JsonKey(name: "type") required final AlbumTypeEnum type,
      @JsonKey(name: "uri") required final String uri}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  @JsonKey(name: "album_type")
  AlbumTypeEnum get albumType;
  @override
  @JsonKey(name: "artists")
  List<Owner> get artists;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "images")
  List<Image> get images;
  @override
  @JsonKey(name: "is_playable")
  bool get isPlayable;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  @JsonKey(name: "release_date_precision")
  String get releaseDatePrecision;
  @override
  @JsonKey(name: "total_tracks")
  int get totalTracks;
  @override
  @JsonKey(name: "type")
  AlbumTypeEnum get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return _ExternalIds.fromJson(json);
}

/// @nodoc
mixin _$ExternalIds {
  @JsonKey(name: "isrc")
  String? get isrc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalIdsCopyWith<ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdsCopyWith<$Res> {
  factory $ExternalIdsCopyWith(
          ExternalIds value, $Res Function(ExternalIds) then) =
      _$ExternalIdsCopyWithImpl<$Res, ExternalIds>;
  @useResult
  $Res call({@JsonKey(name: "isrc") String? isrc});
}

/// @nodoc
class _$ExternalIdsCopyWithImpl<$Res, $Val extends ExternalIds>
    implements $ExternalIdsCopyWith<$Res> {
  _$ExternalIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = freezed,
  }) {
    return _then(_value.copyWith(
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalIdsImplCopyWith<$Res>
    implements $ExternalIdsCopyWith<$Res> {
  factory _$$ExternalIdsImplCopyWith(
          _$ExternalIdsImpl value, $Res Function(_$ExternalIdsImpl) then) =
      __$$ExternalIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "isrc") String? isrc});
}

/// @nodoc
class __$$ExternalIdsImplCopyWithImpl<$Res>
    extends _$ExternalIdsCopyWithImpl<$Res, _$ExternalIdsImpl>
    implements _$$ExternalIdsImplCopyWith<$Res> {
  __$$ExternalIdsImplCopyWithImpl(
      _$ExternalIdsImpl _value, $Res Function(_$ExternalIdsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = freezed,
  }) {
    return _then(_$ExternalIdsImpl(
      isrc: freezed == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalIdsImpl implements _ExternalIds {
  const _$ExternalIdsImpl({@JsonKey(name: "isrc") this.isrc});

  factory _$ExternalIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalIdsImplFromJson(json);

  @override
  @JsonKey(name: "isrc")
  final String? isrc;

  @override
  String toString() {
    return 'ExternalIds(isrc: $isrc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdsImpl &&
            (identical(other.isrc, isrc) || other.isrc == isrc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isrc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      __$$ExternalIdsImplCopyWithImpl<_$ExternalIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalIdsImplToJson(
      this,
    );
  }
}

abstract class _ExternalIds implements ExternalIds {
  const factory _ExternalIds({@JsonKey(name: "isrc") final String? isrc}) =
      _$ExternalIdsImpl;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$ExternalIdsImpl.fromJson;

  @override
  @JsonKey(name: "isrc")
  String? get isrc;
  @override
  @JsonKey(ignore: true)
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoThumbnail _$VideoThumbnailFromJson(Map<String, dynamic> json) {
  return _VideoThumbnail.fromJson(json);
}

/// @nodoc
mixin _$VideoThumbnail {
  @JsonKey(name: "url")
  dynamic get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoThumbnailCopyWith<VideoThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoThumbnailCopyWith<$Res> {
  factory $VideoThumbnailCopyWith(
          VideoThumbnail value, $Res Function(VideoThumbnail) then) =
      _$VideoThumbnailCopyWithImpl<$Res, VideoThumbnail>;
  @useResult
  $Res call({@JsonKey(name: "url") dynamic url});
}

/// @nodoc
class _$VideoThumbnailCopyWithImpl<$Res, $Val extends VideoThumbnail>
    implements $VideoThumbnailCopyWith<$Res> {
  _$VideoThumbnailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoThumbnailImplCopyWith<$Res>
    implements $VideoThumbnailCopyWith<$Res> {
  factory _$$VideoThumbnailImplCopyWith(_$VideoThumbnailImpl value,
          $Res Function(_$VideoThumbnailImpl) then) =
      __$$VideoThumbnailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "url") dynamic url});
}

/// @nodoc
class __$$VideoThumbnailImplCopyWithImpl<$Res>
    extends _$VideoThumbnailCopyWithImpl<$Res, _$VideoThumbnailImpl>
    implements _$$VideoThumbnailImplCopyWith<$Res> {
  __$$VideoThumbnailImplCopyWithImpl(
      _$VideoThumbnailImpl _value, $Res Function(_$VideoThumbnailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$VideoThumbnailImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoThumbnailImpl implements _VideoThumbnail {
  const _$VideoThumbnailImpl({@JsonKey(name: "url") required this.url});

  factory _$VideoThumbnailImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoThumbnailImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final dynamic url;

  @override
  String toString() {
    return 'VideoThumbnail(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoThumbnailImpl &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoThumbnailImplCopyWith<_$VideoThumbnailImpl> get copyWith =>
      __$$VideoThumbnailImplCopyWithImpl<_$VideoThumbnailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoThumbnailImplToJson(
      this,
    );
  }
}

abstract class _VideoThumbnail implements VideoThumbnail {
  const factory _VideoThumbnail(
          {@JsonKey(name: "url") required final dynamic url}) =
      _$VideoThumbnailImpl;

  factory _VideoThumbnail.fromJson(Map<String, dynamic> json) =
      _$VideoThumbnailImpl.fromJson;

  @override
  @JsonKey(name: "url")
  dynamic get url;
  @override
  @JsonKey(ignore: true)
  _$$VideoThumbnailImplCopyWith<_$VideoThumbnailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
