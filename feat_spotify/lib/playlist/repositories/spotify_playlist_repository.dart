import 'dart:io';

import 'package:feat_spotify/api/spotify_api.dart';
import 'package:feat_spotify/playlist/models/spotify_playlist.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spotifyPlaylistRepoProvider = Provider(
  (ref) => SpotifyPlaylistRepository(),
);

class SpotifyPlaylistRepository {
  Future<SpotifyPlaylist> getPlaylist(
    String id,
    String authorization,
  ) async {
    final json = await fetchData(
      SpotifyApiType.playlist,
      id: id,
      query: {
        "market": "KR",
      },
      headers: {
        HttpHeaders.authorizationHeader: authorization,
        HttpHeaders.acceptCharsetHeader: "UTF-8",
        HttpHeaders.acceptHeader: "application/json",
      },
    );
    return SpotifyPlaylist.fromJson(json);
  }
}
