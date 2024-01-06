import 'package:flutter/material.dart';

import '../../../../core/api/api_service.dart';
import '../../../../core/movie_order.dart';
import '../../functions/get_coming_soon.dart';
import '../../functions/get_now_on_cinema.dart';
import '../../functions/get_popular_movies.dart';
import 'movie_title.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key, required this.movieOrder});
  final MovieOrder movieOrder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        switch (movieOrder) {
          MovieOrder.popular => const SizedBox.shrink(),
          MovieOrder.nowPlaying => const SizedBox(height: 10),
          MovieOrder.upcoming => const SizedBox(height: 14),
        },
        MoiveTitle(movieOrder: movieOrder),
        if (movieOrder == MovieOrder.nowPlaying) const SizedBox(height: 10),
        SizedBox(
          height: movieOrder.height,
          child: FutureBuilder(
            future: ApiService.getMovies(movieOrder),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('An error occurred while loading the movies'),
                  ),
                );
              }
              if (snapshot.hasData) {
                return switch (movieOrder) {
                  MovieOrder.popular => PopularMoviesView(snapshot: snapshot),
                  MovieOrder.nowPlaying => getNowOnCinema(snapshot, 136, 96),
                  MovieOrder.upcoming => getComingSoon(snapshot, 86, 131),
                };
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ],
    );
  }
}
