import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/movie_meta.dart';

const _apiBaseUrl = 'https://movies-api.nomadcoders.workers.dev';

class ApiService {
  static const String _detail = 'movie?id=';
  static const String _resultsField = 'results';

  ApiService._(); // private constructor to prevent calling constructor outside

  static Future<List<SimpleMovie>> getSimpleMovies(FetchType fetchType) async {
    final List<dynamic> listData =
        await fetchData(fetchType.apiPathUrl, DataType.list);
    return listData.map((e) => SimpleMovie.fromJson(e)).toList();
  }

  static Future<DetailMovie> getDetailMovie(int id) async {
    final objectData =
        await fetchData('$_apiBaseUrl/$_detail$id', DataType.object);
    return DetailMovie.fromJson(objectData);
  }

  static Future<dynamic> fetchData(String path, DataType dataType) async {
    try {
      final uri = Uri.parse(path);
      final response = await http.get(uri);
      final decoded = jsonDecode(utf8.decode(response.bodyBytes));

      return switch (dataType) {
        DataType.list => decoded[_resultsField],
        DataType.object => decoded,
      };
    } catch (e, s) {
      debugPrint("Error: ${e.toString()}");
      debugPrintStack(stackTrace: s);
      throw Exception(
        'API 요청 실패',
      );
    }
  }
}

enum DataType { object, list }

sealed class FetchType {
  FetchType._(this.path, this.title);

  final String path;
  final String title;

  factory FetchType.popular() => Popular._('popular', 'Popular Movies');

  factory FetchType.nowPlaying() =>
      NowPlaying._('now-playing', 'Now in Cinemas');

  factory FetchType.comingSoon() => ComingSoon._('coming-soon', 'Coming Soon');

  String get apiPathUrl => '$_apiBaseUrl/$path';
}

class Popular extends FetchType {
  Popular._(
    String path,
    String title,
  ) : super._(path, title);
}

class NowPlaying extends FetchType {
  NowPlaying._(
    String path,
    String title,
  ) : super._(path, title);
}

class ComingSoon extends FetchType {
  ComingSoon._(
    String path,
    String title,
  ) : super._(path, title);
}
