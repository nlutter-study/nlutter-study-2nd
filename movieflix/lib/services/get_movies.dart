import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:movieflix/models/movie.dart';
import 'package:movieflix/models/movie_detail.dart';

class GetMovies {
  final baseUrl = 'https://movies-api.nomadcoders.workers.dev/';
  final pop = 'popular';

//'https://movies-api.nomadcoders.workers.dev/popular' // 가장 인기 있는 영화를 보려면 이 엔드포인트를 방문하세요:
//'https://movies-api.nomadcoders.workers.dev/now-playing'// 극장에서 상영 중인 영화를 보려면 이 엔드포인트를 방문하세요:
//'https://movies-api.nomadcoders.workers.dev/now-playing'// 곧 개봉하는 영화를 보려면 이 엔드포인트를 방문하세요: x
//'https://movies-api.nomadcoders.workers.dev/movie?id=1 (아이디를 세부 정보를 보려는 영화의 아이디로 바꾸세요).'

  Future<List<MovieModel>> get(String subUrl) async {
    List<MovieModel> movies = [];
    final url = Uri.parse('$baseUrl$subUrl');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final getData = jsonDecode(response.body);

      final results = getData["results"];

      for (var movie in results) {
        movies.add(MovieModel.fromJson(movie));
      }
      return movies;
    }
    throw Error();
  }

  Future<MovieDetailModel> getMovieDetailbyId(String id) async {
    final url =
        Uri.parse('https://movies-api.nomadcoders.workers.dev/movie?id=$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      //print(response.body);
      return MovieDetailModel.fromJson(jsonDecode(response.body));
    }
    throw Error();
  }
}
