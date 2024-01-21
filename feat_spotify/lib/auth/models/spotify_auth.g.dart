// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spotify_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpotifyAuthImpl _$$SpotifyAuthImplFromJson(Map<String, dynamic> json) =>
    _$SpotifyAuthImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: json['expires_in'] as int,
    );

Map<String, dynamic> _$$SpotifyAuthImplToJson(_$SpotifyAuthImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };
