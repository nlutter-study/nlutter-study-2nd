import 'package:freezed_annotation/freezed_annotation.dart';

part 'spotify_auth.freezed.dart';
part 'spotify_auth.g.dart';

@freezed
abstract class SpotifyAuth implements _$SpotifyAuth {
  const SpotifyAuth._();

  @JsonSerializable(
    fieldRename: FieldRename.snake,
    createToJson: true,
  )
  const factory SpotifyAuth({
    required String accessToken,
    required String tokenType,
    required int expiresIn, // seconds
  }) = _SpotifyAuth;

  factory SpotifyAuth.fromJson(Map<String, dynamic> json) =>
      _$SpotifyAuthFromJson(json);

  String get authorizationHeader => '$tokenType $accessToken';
}
