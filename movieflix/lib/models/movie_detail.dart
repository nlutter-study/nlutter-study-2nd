class MovieDetailModel {
  late String release_date, overview;
  late int runtime;
  late double vote_average;
  late List<String> genres = [];

  MovieDetailModel.fromJson(Map<String, dynamic> json) {
    overview = json["overview"];
    release_date = json["release_date"];
    runtime = json["runtime"];
    vote_average = json["vote_average"];
    for (var e in json['genres']) {
      genres.add(e["name"]);
    }
  }
}
