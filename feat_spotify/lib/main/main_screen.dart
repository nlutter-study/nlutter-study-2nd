import 'package:feat_spotify/auth/view_models/spotify_auth_view_model.dart';
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
    final authViewModel = ref.watch(spotifyAuthViewModelProvider);

    return Scaffold(
      body: Center(
        child: authViewModel.isLoading
            ? const CircularProgressIndicator.adaptive()
            : Text(
                authViewModel.value.toString(),
              ),
      ),
    );
  }
}
