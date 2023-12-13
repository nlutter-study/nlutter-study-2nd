import 'package:flutter/material.dart';
import 'package:movieflix/models/movie.dart';
import 'package:movieflix/screens/movie_detail_screen.dart';
import 'package:movieflix/widgets/movie_poster_widget.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    super.key,
    required this.movies,
  });

  final Future<List<MovieModel>> movies;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: movies,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: 200,
            decoration: const BoxDecoration(),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var movie = snapshot.data![index];
                var posterUrl = movie.baseUrl + movie.Poster;

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          id: movie.Id,
                          title: movie.Title,
                          posterUrl: movie.baseUrl + movie.BackImg,
                        ),
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PosterCard(posterUrl: posterUrl, title: movie.Title),
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
          );
        }
        return Container(); //const CircularProgressIndicator();
      },
    );
  }
}
