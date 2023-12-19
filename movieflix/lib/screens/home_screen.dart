import 'package:flutter/material.dart';
import 'package:movieflix/models/image_type.dart';

import '../services/api_service.dart';
import '../widgets/movie_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        surfaceTintColor: Theme.of(context).colorScheme.background,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            MovieCardWidget(
              fetchType: FetchType.popular(),
              imageType: CardImageType.landscape(),
              isDisplayTitle: false,
            ),
            MovieCardWidget(
              fetchType: FetchType.nowPlaying(),
              imageType: CardImageType.square(),
            ),
            MovieCardWidget(
              fetchType: FetchType.comingSoon(),
              imageType: CardImageType.square(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
