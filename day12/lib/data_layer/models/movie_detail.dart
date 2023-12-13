class MovieDetail {
  final String posterPath;
  final String title;
  final String overview;
  final double voteAverage;
  final List<String> genres;
  final int runtime;

  MovieDetail({
    required this.posterPath,
    required this.title,
    required this.overview,
    required this.voteAverage,
    required this.genres,
    required this.runtime,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) {
    final genres = <String>[];
    for (final genre in json['genres']) {
      genres.add(genre['name']);
    }
    return MovieDetail(
      posterPath: json['poster_path'],
      title: json['title'],
      overview: json['overview'],
      voteAverage: json['vote_average'].toDouble(),
      genres: genres,
      runtime: json['runtime'],
    );
  }
}
