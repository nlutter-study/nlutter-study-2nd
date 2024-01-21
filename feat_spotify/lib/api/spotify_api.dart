import 'dart:convert';

import 'package:http/http.dart' as http;

const _accountsHost = 'accounts.spotify.com';
const _apiHost = 'api.spotify.com';

const spotifyClientId = '6650330c1f304546a18186f41866601e';
const spotifyClientSecret = '4610593326b045b597dc53d587a665df';

Future<dynamic> fetchData(
  SpotifyApiType apiType, {
  String? id,
  Map<String, dynamic>? query,
  Map<String, String>? headers,
}) async {
  final response = await http.get(
    Uri.https(
      apiType.host,
      apiType.apiPath + ((id == null) ? '' : '/$id'),
      query,
    ),
    headers: headers,
  );
  return jsonDecode(
    utf8.decode(
      (response.bodyBytes),
    ),
  );
}

Future<dynamic> postData(
  SpotifyApiType apiType, {
  Map<String, dynamic>? body,
  Map<String, String>? headers,
}) async {
  final response = await http.post(
    Uri.https(
      apiType.host,
      apiType.apiPath,
    ),
    encoding: Encoding.getByName('utf-8'),
    headers: headers,
    body: body,
  );
  return jsonDecode(
    utf8.decode(
      (response.bodyBytes),
    ),
  );
}

enum SpotifyApiType {
  accessToken(
    host: _accountsHost,
    apiPath: '/api/token',
  ),
  featuredPlaylists(
    host: _apiHost,
    apiPath: '/v1/browse/featured-playlists',
  ),
  playlist(
    host: _apiHost,
    apiPath: '/v1/playlists',
  );

  const SpotifyApiType({
    required this.host,
    required this.apiPath,
  });

  final String host;
  final String apiPath;
}
