import 'dart:async';

import 'package:feat_spotify/auth/view_models/spotify_auth_view_model.dart';
import 'package:feat_spotify/featured/models/spotify_featured_playlists.dart';
import 'package:feat_spotify/featured/repositories/spotify_featured_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spotifyFeaturedViewModelProvider =
    AsyncNotifierProvider<SpotifyFeaturedViewModel, SpotifyFeaturedPlaylists?>(
  () => SpotifyFeaturedViewModel(),
);

class SpotifyFeaturedViewModel
    extends AsyncNotifier<SpotifyFeaturedPlaylists?> {
  late final _authViewModel = ref.read(spotifyAuthViewModelProvider);
  late final _featuredRepository = ref.read(spotifyFeaturedRepoProvider);

  @override
  FutureOr<SpotifyFeaturedPlaylists?> build() async {
    final authViewModel = ref.watch(spotifyAuthViewModelProvider);

    return authViewModel.isLoading
        ? null
        : await _featuredRepository.getFeaturedPlaylists(
            _authViewModel.value!.authorizationHeader,
          );
  }
}
