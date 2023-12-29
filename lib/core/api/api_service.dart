import '../../model/movie_detail_model.dart';
import '../../model/movie_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../movie_order.dart';

class ApiService {
  static String baseUrl = "https://movies-api.nomadcoders.workers.dev";
  static String popular = "popular";
  static String nowPlaying = "now-playing";
  static String upcoming = "coming-soon";
  static String movie = "movie";

  static Future<List<MovieModel>> getMovies(MovieOrder movieOrder) async {
    try {
      final url = Uri.parse('$baseUrl/${movieOrder.value}');
      final response = await http.get(url);

      if (response.statusCode != 200) {
        throw Error();
      }

      return jsonDecode(utf8.decode(response.bodyBytes))['results']
          .map<MovieModel>((movie) => MovieModel.fromJson(movie))
          .toList();
    } catch (e) {
      throw Exception("An error occurred while loading the movies");
    }
  }

  static Future<MovieDetailModel> getMovieByID(String id) async {
    final url = Uri.parse('$baseUrl/$movie?id=$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final movie = jsonDecode(utf8.decode(response.bodyBytes));
      final mov = MovieDetailModel.fromJson(movie);
      return mov;
    }
    throw Error();
  }
}
