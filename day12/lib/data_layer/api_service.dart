import 'dart:convert';

import 'package:http/http.dart' as http;
import 'models/index.dart';

const _movieListUrl = 'https://movies-api.nomadcoders.workers.dev';
const _movieDetailUrl = 'https://movies-api.nomadcoders.workers.dev/movie';
const _moviePosterUrl = 'https://image.tmdb.org/t/p/w500';

Future<List<Movie>> fetchMovies(String path) async {
  try {
    final parsedUrl = Uri.parse('$_movieListUrl/$path');
    final response = await http.get(parsedUrl);
    if (response.statusCode == 200) {
      final movies = <Movie>[];
      final json = jsonDecode(response.body);
      for (final movie in json['results']) {
        movies.add(Movie.fromJson(movie));
      }
      return movies;
    } else {
      throw Exception('Failed to load movies');
    }
  } catch (e) {
    throw Exception('Failed to load movies');
  }
}

Future<MovieDetail> fetchMovieDetail(String id) async {
  try {
    final parsedUrl = Uri.parse(_movieDetailUrl).replace(queryParameters: {'id': id});

    print(parsedUrl);
    final response = await http.get(parsedUrl);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return MovieDetail.fromJson(json);
    } else {
      throw Exception('Failed to load movie detail');
    }
  } catch (e) {
    throw Exception('Failed to load movie detail');
  }
}

getPosterPath(String posterPath) {
  return '$_moviePosterUrl$posterPath';
}
