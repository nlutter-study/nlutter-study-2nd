import 'package:flutter/material.dart';
import 'package:movieflix/models/movie.dart';
import 'package:movieflix/screens/movie_detail_screen.dart';
import 'package:movieflix/services/get_movies.dart';
import 'package:movieflix/widgets/movie_list_view.dart';
import 'package:movieflix/widgets/title_text_widget.dart';

class MovieFlix extends StatefulWidget {
  const MovieFlix({super.key});

  @override
  State<MovieFlix> createState() => _MovieFlixState();
}

class _MovieFlixState extends State<MovieFlix> {
  late Future<List<MovieModel>> popMovies = GetMovies().get("popular");
  late Future<List<MovieModel>> comingMovies = GetMovies().get("coming-soon");
  late Future<List<MovieModel>> nowMovies = GetMovies().get("now-playing");

  void _onPosterCardTap({movieId, movieTitle, posterUrl}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(
          id: movieId,
          title: movieTitle,
          posterUrl: posterUrl,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieFlix',
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextWidget(name: "Popular Movies"),
                const SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                  future: popMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 150,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                                var movie = snapshot.data![index];
                                var posterUrl = movie.baseUrl + movie.Poster;

                                return GestureDetector(
                                  onTap: () => _onPosterCardTap(
                                    movieId: movie.Id,
                                    movieTitle: movie.Title,
                                    posterUrl: movie.baseUrl + movie.BackImg,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 260,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Image.network(
                                          posterUrl,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  width: 10,
                                );
                              },
                            ),
                          ),

                          //
                        ],
                      );
                    }
                    return const CircularProgressIndicator();
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextWidget(name: "Now in Cinemas"),
                MovieList(movies: nowMovies),
                const SizedBox(
                  height: 50,
                ),
                const TextWidget(name: "Coming Soon"),
                MovieList(movies: comingMovies),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
