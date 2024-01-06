import 'package:flutter/material.dart';

import '../features/home/screens/widgets/movie_list.dart';

enum MovieOrder {
  popular(
    value: "popular",
    imagePath: '',
    height: 371,
  ),
  nowPlaying(
    value: "now-playing",
    title: 'Now On Cinema',
    imagePath: 'assets/images/flame.png',
    left: 15,
    width: 16,
    height: 140,
    crossAxisAlignment: CrossAxisAlignment.start,
  ),
  upcoming(
    value: "coming-soon",
    title: 'Coming Soon',
    imagePath: "assets/images/ddoza.png",
    left: 10,
    width: 22,
    height: 170,
    crossAxisAlignment: CrossAxisAlignment.center,
  );

  const MovieOrder({
    required this.value,
    this.title = '',
    required this.imagePath,
    this.left = 0,
    this.width,
    required this.height,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });
  final String value;
  final String title;
  final String imagePath;
  final double left;
  final double? width;
  final double height;
  final CrossAxisAlignment crossAxisAlignment;

  Widget build() {
    final child = MovieList(movieOrder: this);
    return switch (this) {
      MovieOrder.nowPlaying => Container(
          decoration: const BoxDecoration(
            color: Color(0xFF1D1D1D),
            border: Border.symmetric(
              horizontal: BorderSide(
                width: 8,
                color: Color(0xFF262626),
              ),
            ),
          ),
          height: 210,
          child: child,
        ),
      _ => child,
    };
  }
}
