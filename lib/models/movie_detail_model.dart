import 'genre.dart';

class MovieDetailModel {
  final String title, posterPath, overview;
  final List<Genre> genres;
  final int id;
  MovieDetailModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        posterPath = json['poster_path'],
        genres = (json['genres'] as List)
            .map((genre) => Genre(id: genre['id'], name: genre['name']))
            .toList(),
        overview = json['overview'];
}
