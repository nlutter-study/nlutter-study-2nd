import 'dart:io';

import 'package:feat_spotify/api/spotify_api.dart';
import 'package:feat_spotify/featured/models/spotify_featured_playlists.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spotifyFeaturedRepoProvider = Provider(
  (ref) => SpotifyFeaturedRepository(),
);

class SpotifyFeaturedRepository {
  Future<SpotifyFeaturedPlaylists> getFeaturedPlaylists(
    String authorization,
  ) async {
    final json = await fetchData(
      SpotifyApiType.featuredPlaylists,
      query: {
        "country": "KR",
        "locale": "ko_KR",
        "limit": "50",
      },
      headers: {
        HttpHeaders.authorizationHeader: authorization,
        HttpHeaders.acceptCharsetHeader: "UTF-8",
        HttpHeaders.acceptHeader: "application/json",
      },
    );
    return SpotifyFeaturedPlaylists.fromJson(json);
  }
}
