import 'package:flutter/material.dart';

import '../screens/detail_screen.dart';

class Movie extends StatelessWidget {
  static const String imageUrl = 'https://image.tmdb.org/t/p/w500';

  final String title, posterPath;
  final String type;
  final int id;

  const Movie({
    super.key,
    required this.posterPath,
    required this.title,
    required this.type,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              posterPath: "$imageUrl/$posterPath",
              title: title,
              id: id,
            ),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: "$id/$type",
            child: Container(
              width: 100,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: const Offset(10, 10),
                    color: Colors.black.withOpacity(0.3),
                  )
                ],
              ),
              child: Image.network(
                "$imageUrl/$posterPath",
                headers: const {
                  "User-Agent":
                      "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
