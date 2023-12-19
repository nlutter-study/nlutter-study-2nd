import 'package:flutter/material.dart';
import 'package:movieflix/models/image_type.dart';
import 'package:movieflix/services/api_service.dart';

import '../models/movie_meta.dart';
import '../screens/detail_screen.dart';
import '../utils/tag_builder.dart';

class MovieCardWidget extends StatelessWidget {
  const MovieCardWidget({
    super.key,
    required this.fetchType,
    required this.imageType,
    this.isDisplayTitle = true,
  });

  final FetchType fetchType;
  final CardImageType imageType;
  final bool isDisplayTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            fetchType.title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        SizedBox(
          height: imageType.height +
              switch (isDisplayTitle) {
                true => 80,
                false => 10,
              },
          child: FutureBuilder(
            future: ApiService.getSimpleMovies(fetchType),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('서버 점검 중입니다. 관리자에게 문의해주세요.'),
                    ),
                  );
                });
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (!snapshot.hasData) {
                return _EmptyCardListWidget(
                  imageType: imageType,
                  isDisplayTitle: isDisplayTitle,
                );
              }
              return _CardListWidget(
                imageType: imageType,
                isDisplayTitle: isDisplayTitle,
                movies: snapshot.data!,
                middleTag: fetchType.title,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CardListWidget extends StatelessWidget {
  const _CardListWidget({
    required this.imageType,
    required this.isDisplayTitle,
    required this.movies,
    required this.middleTag,
  });

  final CardImageType imageType;
  final bool isDisplayTitle;
  final List<SimpleMovie> movies;
  final String middleTag;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemBuilder: (context, index) {
        // cache image
        precacheImage(Image.network(movies[index].imageBigUrl!).image, context);

        // widget
        return GestureDetector(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailScreen(
                  id: movies[index].id,
                  title: movies[index].title,
                  imageUrl: movies[index].imageBigUrl!,
                  middleTag: middleTag,
                ),
              ),
            ),
          },
          child: Container(
            width: imageType.width,
            decoration: const BoxDecoration(color: Colors.transparent),
            clipBehavior: Clip.hardEdge,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Hero(
                  tag: TagBuilder.buildImageTag(middleTag, movies[index].id),
                  child: Container(
                    width: imageType.width,
                    height: imageType.height,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.network(
                      movies[index].imageUrl!,
                      height: imageType.width,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (isDisplayTitle)
                  Text(
                    movies[index].title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 20),
    );
  }
}

class _EmptyCardListWidget extends StatelessWidget {
  const _EmptyCardListWidget({
    required this.isDisplayTitle,
    required this.imageType,
  });

  final bool isDisplayTitle;
  final CardImageType imageType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 20),
          for (var i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: imageType.width,
                    height: imageType.height,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (isDisplayTitle)
                    Container(
                      width: imageType.width - 10,
                      height: 18,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.3),
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
