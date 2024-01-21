// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spotify_featured_playlists.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpotifyFeaturedPlaylists _$SpotifyFeaturedPlaylistsFromJson(
    Map<String, dynamic> json) {
  return _SpotifyFeaturedPlaylists.fromJson(json);
}

/// @nodoc
mixin _$SpotifyFeaturedPlaylists {
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "playlists")
  Playlists get playlists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpotifyFeaturedPlaylistsCopyWith<SpotifyFeaturedPlaylists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpotifyFeaturedPlaylistsCopyWith<$Res> {
  factory $SpotifyFeaturedPlaylistsCopyWith(SpotifyFeaturedPlaylists value,
          $Res Function(SpotifyFeaturedPlaylists) then) =
      _$SpotifyFeaturedPlaylistsCopyWithImpl<$Res, SpotifyFeaturedPlaylists>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "playlists") Playlists playlists});

  $PlaylistsCopyWith<$Res> get playlists;
}

/// @nodoc
class _$SpotifyFeaturedPlaylistsCopyWithImpl<$Res,
        $Val extends SpotifyFeaturedPlaylists>
    implements $SpotifyFeaturedPlaylistsCopyWith<$Res> {
  _$SpotifyFeaturedPlaylistsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? playlists = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaylistsCopyWith<$Res> get playlists {
    return $PlaylistsCopyWith<$Res>(_value.playlists, (value) {
      return _then(_value.copyWith(playlists: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpotifyFeaturedPlaylistsImplCopyWith<$Res>
    implements $SpotifyFeaturedPlaylistsCopyWith<$Res> {
  factory _$$SpotifyFeaturedPlaylistsImplCopyWith(
          _$SpotifyFeaturedPlaylistsImpl value,
          $Res Function(_$SpotifyFeaturedPlaylistsImpl) then) =
      __$$SpotifyFeaturedPlaylistsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String message,
      @JsonKey(name: "playlists") Playlists playlists});

  @override
  $PlaylistsCopyWith<$Res> get playlists;
}

/// @nodoc
class __$$SpotifyFeaturedPlaylistsImplCopyWithImpl<$Res>
    extends _$SpotifyFeaturedPlaylistsCopyWithImpl<$Res,
        _$SpotifyFeaturedPlaylistsImpl>
    implements _$$SpotifyFeaturedPlaylistsImplCopyWith<$Res> {
  __$$SpotifyFeaturedPlaylistsImplCopyWithImpl(
      _$SpotifyFeaturedPlaylistsImpl _value,
      $Res Function(_$SpotifyFeaturedPlaylistsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? playlists = null,
  }) {
    return _then(_$SpotifyFeaturedPlaylistsImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      playlists: null == playlists
          ? _value.playlists
          : playlists // ignore: cast_nullable_to_non_nullable
              as Playlists,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpotifyFeaturedPlaylistsImpl implements _SpotifyFeaturedPlaylists {
  const _$SpotifyFeaturedPlaylistsImpl(
      {@JsonKey(name: "message") required this.message,
      @JsonKey(name: "playlists") required this.playlists});

  factory _$SpotifyFeaturedPlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpotifyFeaturedPlaylistsImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "playlists")
  final Playlists playlists;

  @override
  String toString() {
    return 'SpotifyFeaturedPlaylists(message: $message, playlists: $playlists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpotifyFeaturedPlaylistsImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.playlists, playlists) ||
                other.playlists == playlists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, playlists);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpotifyFeaturedPlaylistsImplCopyWith<_$SpotifyFeaturedPlaylistsImpl>
      get copyWith => __$$SpotifyFeaturedPlaylistsImplCopyWithImpl<
          _$SpotifyFeaturedPlaylistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpotifyFeaturedPlaylistsImplToJson(
      this,
    );
  }
}

abstract class _SpotifyFeaturedPlaylists implements SpotifyFeaturedPlaylists {
  const factory _SpotifyFeaturedPlaylists(
          {@JsonKey(name: "message") required final String message,
          @JsonKey(name: "playlists") required final Playlists playlists}) =
      _$SpotifyFeaturedPlaylistsImpl;

  factory _SpotifyFeaturedPlaylists.fromJson(Map<String, dynamic> json) =
      _$SpotifyFeaturedPlaylistsImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "playlists")
  Playlists get playlists;
  @override
  @JsonKey(ignore: true)
  _$$SpotifyFeaturedPlaylistsImplCopyWith<_$SpotifyFeaturedPlaylistsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) {
  return _Playlists.fromJson(json);
}

/// @nodoc
mixin _$Playlists {
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
  $PlaylistsCopyWith<Playlists> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistsCopyWith<$Res> {
  factory $PlaylistsCopyWith(Playlists value, $Res Function(Playlists) then) =
      _$PlaylistsCopyWithImpl<$Res, Playlists>;
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
class _$PlaylistsCopyWithImpl<$Res, $Val extends Playlists>
    implements $PlaylistsCopyWith<$Res> {
  _$PlaylistsCopyWithImpl(this._value, this._then);

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
abstract class _$$PlaylistsImplCopyWith<$Res>
    implements $PlaylistsCopyWith<$Res> {
  factory _$$PlaylistsImplCopyWith(
          _$PlaylistsImpl value, $Res Function(_$PlaylistsImpl) then) =
      __$$PlaylistsImplCopyWithImpl<$Res>;
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
class __$$PlaylistsImplCopyWithImpl<$Res>
    extends _$PlaylistsCopyWithImpl<$Res, _$PlaylistsImpl>
    implements _$$PlaylistsImplCopyWith<$Res> {
  __$$PlaylistsImplCopyWithImpl(
      _$PlaylistsImpl _value, $Res Function(_$PlaylistsImpl) _then)
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
    return _then(_$PlaylistsImpl(
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
class _$PlaylistsImpl implements _Playlists {
  const _$PlaylistsImpl(
      {@JsonKey(name: "href") required this.href,
      @JsonKey(name: "items") required final List<Item> items,
      @JsonKey(name: "limit") required this.limit,
      @JsonKey(name: "next") required this.next,
      @JsonKey(name: "offset") required this.offset,
      @JsonKey(name: "previous") required this.previous,
      @JsonKey(name: "total") required this.total})
      : _items = items;

  factory _$PlaylistsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistsImplFromJson(json);

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
    return 'Playlists(href: $href, items: $items, limit: $limit, next: $next, offset: $offset, previous: $previous, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistsImpl &&
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
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      __$$PlaylistsImplCopyWithImpl<_$PlaylistsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistsImplToJson(
      this,
    );
  }
}

abstract class _Playlists implements Playlists {
  const factory _Playlists(
      {@JsonKey(name: "href") required final String href,
      @JsonKey(name: "items") required final List<Item> items,
      @JsonKey(name: "limit") required final int limit,
      @JsonKey(name: "next") required final dynamic next,
      @JsonKey(name: "offset") required final int offset,
      @JsonKey(name: "previous") required final dynamic previous,
      @JsonKey(name: "total") required final int total}) = _$PlaylistsImpl;

  factory _Playlists.fromJson(Map<String, dynamic> json) =
      _$PlaylistsImpl.fromJson;

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
  _$$PlaylistsImplCopyWith<_$PlaylistsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "collaborative")
  bool get collaborative => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
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
  dynamic get primaryColor => throw _privateConstructorUsedError;
  @JsonKey(name: "public")
  dynamic get public => throw _privateConstructorUsedError;
  @JsonKey(name: "snapshot_id")
  String get snapshotId => throw _privateConstructorUsedError;
  @JsonKey(name: "tracks")
  Tracks get tracks => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  ItemType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "collaborative") bool collaborative,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "owner") Owner owner,
      @JsonKey(name: "primary_color") dynamic primaryColor,
      @JsonKey(name: "public") dynamic public,
      @JsonKey(name: "snapshot_id") String snapshotId,
      @JsonKey(name: "tracks") Tracks tracks,
      @JsonKey(name: "type") ItemType type,
      @JsonKey(name: "uri") String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
  $OwnerCopyWith<$Res> get owner;
  $TracksCopyWith<$Res> get tracks;
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
    Object? collaborative = null,
    Object? description = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? owner = null,
    Object? primaryColor = freezed,
    Object? public = freezed,
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
              as dynamic,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as ItemType,
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
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "collaborative") bool collaborative,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "owner") Owner owner,
      @JsonKey(name: "primary_color") dynamic primaryColor,
      @JsonKey(name: "public") dynamic public,
      @JsonKey(name: "snapshot_id") String snapshotId,
      @JsonKey(name: "tracks") Tracks tracks,
      @JsonKey(name: "type") ItemType type,
      @JsonKey(name: "uri") String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
  @override
  $OwnerCopyWith<$Res> get owner;
  @override
  $TracksCopyWith<$Res> get tracks;
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
    Object? collaborative = null,
    Object? description = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? owner = null,
    Object? primaryColor = freezed,
    Object? public = freezed,
    Object? snapshotId = null,
    Object? tracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ItemImpl(
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
              as dynamic,
      public: freezed == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as ItemType,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {@JsonKey(name: "collaborative") required this.collaborative,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "owner") required this.owner,
      @JsonKey(name: "primary_color") required this.primaryColor,
      @JsonKey(name: "public") required this.public,
      @JsonKey(name: "snapshot_id") required this.snapshotId,
      @JsonKey(name: "tracks") required this.tracks,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri})
      : _images = images;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

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
  final dynamic primaryColor;
  @override
  @JsonKey(name: "public")
  final dynamic public;
  @override
  @JsonKey(name: "snapshot_id")
  final String snapshotId;
  @override
  @JsonKey(name: "tracks")
  final Tracks tracks;
  @override
  @JsonKey(name: "type")
  final ItemType type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'Item(collaborative: $collaborative, description: $description, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, owner: $owner, primaryColor: $primaryColor, public: $public, snapshotId: $snapshotId, tracks: $tracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.collaborative, collaborative) ||
                other.collaborative == collaborative) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            const DeepCollectionEquality()
                .equals(other.primaryColor, primaryColor) &&
            const DeepCollectionEquality().equals(other.public, public) &&
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
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      owner,
      const DeepCollectionEquality().hash(primaryColor),
      const DeepCollectionEquality().hash(public),
      snapshotId,
      tracks,
      type,
      uri);

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
      {@JsonKey(name: "collaborative") required final bool collaborative,
      @JsonKey(name: "description") required final String description,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "owner") required final Owner owner,
      @JsonKey(name: "primary_color") required final dynamic primaryColor,
      @JsonKey(name: "public") required final dynamic public,
      @JsonKey(name: "snapshot_id") required final String snapshotId,
      @JsonKey(name: "tracks") required final Tracks tracks,
      @JsonKey(name: "type") required final ItemType type,
      @JsonKey(name: "uri") required final String uri}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

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
  dynamic get primaryColor;
  @override
  @JsonKey(name: "public")
  dynamic get public;
  @override
  @JsonKey(name: "snapshot_id")
  String get snapshotId;
  @override
  @JsonKey(name: "tracks")
  Tracks get tracks;
  @override
  @JsonKey(name: "type")
  ItemType get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
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

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "height")
  dynamic get height => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  dynamic get width => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "height") dynamic height,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "width") dynamic width});
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
              as dynamic,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@JsonKey(name: "height") dynamic height,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "width") dynamic width});
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
              as dynamic,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  final dynamic height;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "width")
  final dynamic width;

  @override
  String toString() {
    return 'Image(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            const DeepCollectionEquality().equals(other.height, height) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(height),
      url,
      const DeepCollectionEquality().hash(width));

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
      {@JsonKey(name: "height") required final dynamic height,
      @JsonKey(name: "url") required final String url,
      @JsonKey(name: "width") required final dynamic width}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "height")
  dynamic get height;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "width")
  dynamic get width;
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
  DisplayName get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  Id get id => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  OwnerType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  Uri get uri => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "display_name") DisplayName displayName,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") Id id,
      @JsonKey(name: "type") OwnerType type,
      @JsonKey(name: "uri") Uri uri});

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
    Object? displayName = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
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
              as Id,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OwnerType,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
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
      {@JsonKey(name: "display_name") DisplayName displayName,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") Id id,
      @JsonKey(name: "type") OwnerType type,
      @JsonKey(name: "uri") Uri uri});

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
    Object? displayName = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$OwnerImpl(
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
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
              as Id,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OwnerType,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl implements _Owner {
  const _$OwnerImpl(
      {@JsonKey(name: "display_name") required this.displayName,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri});

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

  @override
  @JsonKey(name: "display_name")
  final DisplayName displayName;
  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final Id id;
  @override
  @JsonKey(name: "type")
  final OwnerType type;
  @override
  @JsonKey(name: "uri")
  final Uri uri;

  @override
  String toString() {
    return 'Owner(displayName: $displayName, externalUrls: $externalUrls, href: $href, id: $id, type: $type, uri: $uri)';
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
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, displayName, externalUrls, href, id, type, uri);

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
      {@JsonKey(name: "display_name") required final DisplayName displayName,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final Id id,
      @JsonKey(name: "type") required final OwnerType type,
      @JsonKey(name: "uri") required final Uri uri}) = _$OwnerImpl;

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override
  @JsonKey(name: "display_name")
  DisplayName get displayName;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  Id get id;
  @override
  @JsonKey(name: "type")
  OwnerType get type;
  @override
  @JsonKey(name: "uri")
  Uri get uri;
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
      {@JsonKey(name: "href") String href, @JsonKey(name: "total") int total});
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
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
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
      {@JsonKey(name: "href") String href, @JsonKey(name: "total") int total});
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
    Object? total = null,
  }) {
    return _then(_$TracksImpl(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "total") required this.total});

  factory _$TracksImpl.fromJson(Map<String, dynamic> json) =>
      _$$TracksImplFromJson(json);

  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "total")
  final int total;

  @override
  String toString() {
    return 'Tracks(href: $href, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TracksImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

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
      @JsonKey(name: "total") required final int total}) = _$TracksImpl;

  factory _Tracks.fromJson(Map<String, dynamic> json) = _$TracksImpl.fromJson;

  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$TracksImplCopyWith<_$TracksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
