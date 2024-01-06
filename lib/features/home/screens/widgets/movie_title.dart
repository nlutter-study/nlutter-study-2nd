import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../core/movie_order.dart';

class MoiveTitle extends StatelessWidget {
  const MoiveTitle({super.key, required this.movieOrder});
  final MovieOrder movieOrder;

  @override
  Widget build(BuildContext context) => switch (movieOrder) {
        MovieOrder.popular => const SizedBox.shrink(),
        _ => Padding(
            padding: EdgeInsets.only(
              left: movieOrder.left,
            ),
            child: Row(
              crossAxisAlignment: movieOrder.crossAxisAlignment,
              children: [
                Image.asset(
                  movieOrder.imagePath,
                  width: movieOrder.width,
                ),
                const Gap(6),
                switch (movieOrder) {
                  MovieOrder.popular => throw Error(),
                  MovieOrder.nowPlaying => GradientText(
                      movieOrder.title,
                      style: commonTextStyle,
                      colors: const [
                        Color(0xFFBC0404),
                        Color(0xFFFAFF00),
                      ],
                      gradientDirection: GradientDirection.btt,
                    ),
                  MovieOrder.upcoming => Text(
                      movieOrder.title,
                      style: commonTextStyle,
                    ),
                },
              ],
            ),
          )
      };
}

const commonTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  letterSpacing: -0.5,
);
