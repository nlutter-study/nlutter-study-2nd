import 'dart:async';

import 'package:feat_spotify/auth/models/spotify_auth.dart';
import 'package:feat_spotify/auth/repositories/spotify_auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spotifyAuthViewModelProvider =
    AsyncNotifierProvider<SpotifyAuthViewModel, SpotifyAuth>(
  () => SpotifyAuthViewModel(),
);

class SpotifyAuthViewModel extends AsyncNotifier<SpotifyAuth> {
  late final _spotifyAuthRepository = ref.read(spotifyAuthRepoProvider);

  @override
  FutureOr<SpotifyAuth> build() async {
    return await _spotifyAuthRepository.postAccessToken();
  }
}
