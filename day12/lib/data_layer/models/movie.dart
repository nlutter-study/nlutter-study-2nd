class Movie {
  final String title;
  final String posterPath;
  final String id;

  Movie({
    required this.id,
    required this.title,
    required this.posterPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      posterPath: json['poster_path'],
      id: json['id'].toString(),
    );
  }
}
