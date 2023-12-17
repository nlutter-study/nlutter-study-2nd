import 'package:flutter/material.dart';
import '../models/movie.dart';
import '../models/movie_model.dart';
import '../services/api_service.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Future<List<MovieModel>> popular = ApiService.getMovies('popular');
  final Future<List<MovieModel>> nowPlaying =
      ApiService.getMovies('now-playing');
  final Future<List<MovieModel>> commingSoon =
      ApiService.getMovies('coming-soon');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff19376D),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0B2447),
        foregroundColor: const Color(0xffA5D7E8),
        title: const Text(
          "Movie App",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Popular",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffA5D7E8),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FutureBuilder(
                future: popular,
                builder: (context, popularSnapshot) {
                  if (popularSnapshot.hasData) {
                    return makeList(popularSnapshot, "popular");
                  } else if (popularSnapshot.hasError) {
                    return const Center(
                      child: Text('Failed to load popular movies.'),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Now Playing",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffA5D7E8),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FutureBuilder(
                future: nowPlaying,
                builder: (context, nowPlayingSnapshot) {
                  if (nowPlayingSnapshot.hasData) {
                    return makeList(nowPlayingSnapshot, "now-playing");
                  } else if (nowPlayingSnapshot.hasError) {
                    return const Center(
                      child: Text('Failed to load now playing movies.'),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Coming Soon",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffA5D7E8),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FutureBuilder(
                future: commingSoon,
                builder: (context, commingSoonSnapshot) {
                  if (commingSoonSnapshot.hasData) {
                    return makeList(commingSoonSnapshot, "coming-soon");
                  } else if (commingSoonSnapshot.hasError) {
                    return const Center(
                      child: Text('Failed to load coming soon movies.'),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView makeList(AsyncSnapshot<List<MovieModel>> snapshot, String type) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Movie(
          title: webtoon.title,
          posterPath: webtoon.posterPath,
          id: webtoon.id,
          type: type,
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 10),
    );
  }
}
