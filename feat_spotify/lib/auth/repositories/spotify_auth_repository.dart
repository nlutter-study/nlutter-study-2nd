import 'package:feat_spotify/api/spotify_api.dart';
import 'package:feat_spotify/auth/models/spotify_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spotifyAuthRepoProvider = Provider(
  (ref) => SpotifyAuthRepository(),
);

class SpotifyAuthRepository {
  Future<SpotifyAuth> postAccessToken() async {
    final json = await postData(
      SpotifyApiType.accessToken,
      body: {
        'grant_type': 'client_credentials',
        'client_id': spotifyClientId,
        'client_secret': spotifyClientSecret,
      },
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
    );
    return SpotifyAuth.fromJson(json);
  }
}
