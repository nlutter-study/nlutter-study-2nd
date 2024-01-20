import 'dart:convert';

import 'package:feat_spotify/models/auth/spotify_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

final spotifyApiClient = _SpotifyApiClient();

const _accountsBaseUrl = 'https://accounts.spotify.com';
// const _apiBaseUrl = 'https://api.spotify.com';

const _clientId = '6650330c1f304546a18186f41866601e';
const _clientSecret = '4610593326b045b597dc53d587a665df';

class _SpotifyApiClient {
  late SpotifyAuth auth;

  Future<void> refreshAccessToken() async {
    final json = await postData(
      _SpotifyRequestType.accessToken,
      body: {
        'grant_type': 'client_credentials',
        'client_id': _clientId,
        'client_secret': _clientSecret,
      },
      headers: {
        "Content-Type": "application/x-www-form-urlencoded",
      },
    );
    auth = SpotifyAuth.fromJson(json);
    debugPrint(auth.toString());
  }

  Future<dynamic> postData(
    _SpotifyRequestType requestType, {
    Map<String, dynamic>? body,
    Map<String, String>? headers,
  }) async {
    final response = await http.post(
      Uri.parse(requestType.url),
      encoding: Encoding.getByName('utf-8'),
      headers: headers,
      body: body,
    );
    return jsonDecode(utf8.decode((response.bodyBytes)));
  }
}

enum _SpotifyRequestType {
  accessToken(
    baseUrl: _accountsBaseUrl,
    apiPath: '/api/token',
  );

  const _SpotifyRequestType({
    required this.baseUrl,
    required this.apiPath,
  });

  final String baseUrl;
  final String apiPath;

  String get url => '$baseUrl$apiPath';
}
