class MovieModel {
  final int id;
  final String title;
  // ignore: non_constant_identifier_names
  final String backdrop_path;
  // ignore: non_constant_identifier_names
  final String poster_path;

  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        backdrop_path =
            "https://image.tmdb.org/t/p/w500${json['backdrop_path'] ?? ""}",
        // ignore: prefer_interpolation_to_compose_strings
        poster_path = "https://image.tmdb.org/t/p/w500" + json['poster_path'];
}
