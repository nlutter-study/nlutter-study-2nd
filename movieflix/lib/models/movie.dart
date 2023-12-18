class MovieModel {
  final baseUrl = 'https://image.tmdb.org/t/p/w500';
  late final String Title, Id, Lan, Poster, BackImg;

  MovieModel.fromJson(Map<String, dynamic> movieData) {
    Title = movieData["title"].toString();
    Id = movieData["id"].toString();
    Lan = movieData["original_language"].toString();
    Poster = movieData["backdrop_path"].toString();
    BackImg = movieData["poster_path"].toString();
  }
}
