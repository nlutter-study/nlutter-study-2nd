import 'package:deviflix/core/movie_order.dart';
import 'package:deviflix/features/home/functions/get_coming_soon.dart';
import 'package:deviflix/features/home/functions/get_now_on_cinema.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../../core/api/api_service.dart';
import '../../../model/movie_model.dart';
import '../functions/get_popular_movies.dart';
import 'widgets/main_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<MovieModel>> popularMovies =
      ApiService.getMovies(MovieOrder.popular);
  final Future<List<MovieModel>> nowPlaying =
      ApiService.getMovies(MovieOrder.nowPlaying);
  final Future<List<MovieModel>> upcoming =
      ApiService.getMovies(MovieOrder.upcoming);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      left: false,
      right: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: MainAppBar(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              ...MovieOrder.values
                  .map((movieOrder) => movieOrder.build())
                  .toList(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
