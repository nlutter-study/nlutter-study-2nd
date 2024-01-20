import 'package:feat_spotify/api/spotify_api_client.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await spotifyApiClient.refreshAccessToken();
  runApp(const FeatSpotifyApp());
}

class FeatSpotifyApp extends StatelessWidget {
  const FeatSpotifyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'feat. spotify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Text(
            spotifyApiClient.auth.toString(),
          ),
        ),
      ),
    );
  }
}
