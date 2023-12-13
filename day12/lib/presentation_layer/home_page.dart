import 'package:day12/presentation_layer/widgets/transverse_movie_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Map<String, String>> movieListCollection = [
      {'title': 'Popular Movies', 'path': 'popular'},
      {'title': 'Now in Cinemas', 'path': 'now-playing'},
      {'title': 'Coming Soon', 'path': 'coming-soon'},
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final movieList in movieListCollection) ...[
                  _title(movieList['title']!),
                  TransverseMovieList(path: movieList['path']!),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
