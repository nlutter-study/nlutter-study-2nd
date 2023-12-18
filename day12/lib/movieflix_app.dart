import 'package:day12/presentation_layer/home_page.dart';
import 'package:flutter/material.dart';

class MovieflixApp extends StatelessWidget {
  const MovieflixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movieflix',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
