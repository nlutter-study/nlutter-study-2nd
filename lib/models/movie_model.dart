class MovieModel {
  final String title, posterPath;
  final int id;
  MovieModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        posterPath = json['poster_path'];
}
