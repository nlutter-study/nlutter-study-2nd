import 'package:flutter/material.dart';

void main() {
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
      home: const Scaffold(),
    );
  }
}
