import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(
    const ProviderScope(
      child: MetronologApp(),
    ),
  );
}

class MetronologApp extends StatelessWidget {
  const MetronologApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'metronolog.',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrangeAccent,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrangeAccent,
          brightness: Brightness.dark,
        ),
      ),
      routerConfig: router,
    );
  }
}
