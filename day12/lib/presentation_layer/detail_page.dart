import 'package:day12/data_layer/api_service.dart';
import 'package:day12/data_layer/models/index.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String movieId;
  const DetailPage({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _appBar(),
      body: FutureBuilder(
        future: fetchMovieDetail(movieId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _body(snapshot.data!);
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Align(
        alignment: Alignment.centerLeft,
        child: Text('back to list'),
      ),
    );
  }

  Widget _body(MovieDetail movieDetail) {
    return Stack(
      children: [
        _backgroundPoster(movieDetail.posterPath),
        _dartOverlay(),
        _content(movieDetail),
      ],
    );
  }

  Widget _backgroundPoster(String posterPath) {
    return Image.network(
      getPosterPath(posterPath),
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }

  Widget _dartOverlay() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black.withOpacity(0.5),
    );
  }

  Widget _content(MovieDetail movieDetail) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(movieDetail.title),
          _score(movieDetail.voteAverage),
          _runningTimeAndGenres(movieDetail.runtime, movieDetail.genres),
          _overview(movieDetail.overview),
          _buyTicketButton(),
        ],
      ),
    );
  }

  Widget _title(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _score(double voteAverage) {
    double remaindRoundedScoreWithFiveTop = voteAverage.round() / 2;
    final stars = List.generate(
      5,
      (index) {
        if (remaindRoundedScoreWithFiveTop >= 1) {
          remaindRoundedScoreWithFiveTop--;
          return const Icon(
            Icons.star,
            color: Colors.yellow,
          );
        } else if (remaindRoundedScoreWithFiveTop >= 0.5) {
          remaindRoundedScoreWithFiveTop = 0;
          return const Icon(
            Icons.star_half,
            color: Colors.yellow,
          );
        } else {
          return const Icon(
            Icons.star_border,
            color: Colors.yellow,
          );
        }
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ...stars,
          const SizedBox(width: 10),
          Text(
            '$voteAverage',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _runningTimeAndGenres(int runtime, List<String> genres) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text(
              '$runtime min  | ',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              genres.join(', '),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _overview(String overview) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Storyline',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            overview,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buyTicketButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Buy Ticket',
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
