import 'package:flutter/material.dart';

class PosterCard extends StatelessWidget {
  const PosterCard({
    super.key,
    required this.posterUrl,
    required this.title,
  });

  final String posterUrl, title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.scale(
          scaleY: 1.7,
          origin: const Offset(0, -70),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(
              posterUrl,
              width: 150,
            ),
          ),
        ),
        SizedBox(
          width: 150,
          child: Transform.translate(
            offset: const Offset(0, 80),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
