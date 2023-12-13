import 'package:day12/data_layer/api_service.dart';
import 'package:day12/data_layer/models/movie.dart';
import 'package:day12/presentation_layer/index.dart';
import 'package:flutter/material.dart';

class TransverseMovieList extends StatelessWidget {
  final String path;
  const TransverseMovieList({super.key, required this.path});

  static const height = 250.0;
  static const imageHeight = 200.0;
  static const textHeight = 40.0;
  static const textWidth = 130.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: FutureBuilder(
        future: fetchMovies(path),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final movies = snapshot.data;
            return _movieListView(movies);
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Something went wrong'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _movieListView(List<Movie>? movies) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: movies!.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailPage(movieId: movie.id);
                },
              ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _moviePoster(movie.posterPath),
              _movieTitle(movie.title),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 8.0,
        );
      },
    );
  }

  Widget _moviePoster(String posterPath) {
    return SizedBox(
      height: imageHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          getPosterPath(posterPath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _movieTitle(String title) {
    return SizedBox(
      height: textHeight,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: textWidth,
        ),
        child: Text(
          title,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
