import 'dart:convert';

import 'package:http/http.dart' as http;

const _accountsBaseUrl = 'https://accounts.spotify.com';
// const _apiBaseUrl = 'https://api.spotify.com';

const spotifyClientId = '6650330c1f304546a18186f41866601e';
const spotifyClientSecret = '4610593326b045b597dc53d587a665df';

Future<dynamic> postData(
  SpotifyApiType requestType, {
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

enum SpotifyApiType {
  accessToken(
    baseUrl: _accountsBaseUrl,
    apiPath: '/api/token',
  );

  const SpotifyApiType({
    required this.baseUrl,
    required this.apiPath,
  });

  final String baseUrl;
  final String apiPath;

  String get url => '$baseUrl$apiPath';
}
