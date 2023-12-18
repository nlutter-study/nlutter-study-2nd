import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../models/movie_meta.dart';

class ApiService {
  static const String _baseUrl = 'https://movies-api.nomadcoders.workers.dev';
  static const String _popularPath = 'popular';
  static const String _nowPlaying = 'now-playing';
  static const String _comingSoon = 'coming-soon';
  static const String _detail = 'movie?id=';

  static const String _resultsField = 'results';

  ApiService._(); // private constructor to prevent calling constructor outside

  static Future<List<SimpleMovie>> getPopularMovies() async {
    final uri = Uri.parse('$_baseUrl/$_popularPath');
    final response = await _doRequest(() => http.get(uri));
    // final response =
    //     await _doRequest(() => throw ClientException('something error'));
    final List<dynamic> results =
        _utf8JsonDecode(response.bodyBytes)[_resultsField];
    return results.map((e) => SimpleMovie.fromJson(e)).toList();
  }

  static Future<List<SimpleMovie>> getNowPlayingMovies() async {
    final uri = Uri.parse('$_baseUrl/$_nowPlaying');
    final response = await _doRequest(() => http.get(uri));
    final List<dynamic> results =
        _utf8JsonDecode(response.bodyBytes)[_resultsField];
    return results.map((e) => SimpleMovie.fromJson(e)).toList();
  }

  static Future<List<SimpleMovie>> getComingSoonMovies() async {
    final uri = Uri.parse('$_baseUrl/$_comingSoon');
    final response = await _doRequest(() => http.get(uri));
    final List<dynamic> results =
        _utf8JsonDecode(response.bodyBytes)[_resultsField];
    return results.map((e) => SimpleMovie.fromJson(e)).toList();
  }

  static Future<DetailMovie> getDetailMovie(int id) async {
    final uri = Uri.parse('$_baseUrl/$_detail$id');
    final response = await _doRequest(() => http.get(uri));
    return DetailMovie.fromJson(_utf8JsonDecode(response.bodyBytes));
  }

  static Future<Response> _doRequest(Future<Response> Function() func) async {
    try {
      return await func();
    } on ClientException catch (e) {
      debugPrint("catch client exception: $e");
      rethrow; // TODO: 커스텀 익셉션 필요 시 던지기 or 응답 Default 로 변경
    } catch (e, s) {
      debugPrint("catch other exceptions: $e");
      debugPrintStack(stackTrace: s);
      rethrow;
    }
  }

  static dynamic _utf8JsonDecode(Uint8List unit) {
    return jsonDecode(utf8.decode(unit));
  }
}
