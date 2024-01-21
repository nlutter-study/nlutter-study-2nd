import 'package:feat_spotify/featured/view_models/spotify_featured_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final featuredViewModel = ref.watch(spotifyFeaturedViewModelProvider);

    return Scaffold(
      body: Center(
        child: (featuredViewModel.isLoading || featuredViewModel.value == null)
            ? const CircularProgressIndicator.adaptive()
            : Text(
                featuredViewModel.value.toString(),
              ),
      ),
    );
  }
}
