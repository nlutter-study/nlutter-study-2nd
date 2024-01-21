import 'dart:async';

import 'package:feat_spotify/auth/view_models/spotify_auth_view_model.dart';
import 'package:feat_spotify/playlist/models/spotify_playlist.dart';
import 'package:feat_spotify/playlist/repositories/spotify_playlist_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spotifyPlaylistViewModelProvider = AsyncNotifierProvider<
    SpotifyPlaylistViewModel, Map<String, SpotifyPlaylist>>(
  () => SpotifyPlaylistViewModel(),
);

class SpotifyPlaylistViewModel
    extends AsyncNotifier<Map<String, SpotifyPlaylist>> {
  late final _playlistRepository = ref.read(spotifyPlaylistRepoProvider);

  @override
  FutureOr<Map<String, SpotifyPlaylist>> build() async {
    return {};
  }

  Future<SpotifyPlaylist> getPlaylist(String id) async {
    final cachePlaylist = state.value?[id];
    if (cachePlaylist != null) {
      return cachePlaylist;
    }

    final auth = ref.read(spotifyAuthViewModelProvider).value!;
    final resultPlaylist = await _playlistRepository.getPlaylist(
      id,
      auth.authorizationHeader,
    );
    state.value!['id'] = resultPlaylist;
    return resultPlaylist;
  }
}
