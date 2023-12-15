class MovieDetailModel {
  final String title, overview, runtime, posterPath, genres;
  final double voteAverage;

  MovieDetailModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        overview = json['overview'],
        voteAverage = json['vote_average'].toDouble(),
        runtime = json['runtime'].toString(),
        // ignore: prefer_interpolation_to_compose_strings
        posterPath = "https://image.tmdb.org/t/p/w500" + json['poster_path'],
        genres = json['genres'].map((e) => e['name']).join(", ");
}
