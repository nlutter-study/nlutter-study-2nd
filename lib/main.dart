import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/settings/repos/dark_config_repo.dart';
import 'package:tiktok/features/settings/view_models/dark_config_vm.dart';
import 'package:tiktok/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final preferences = await SharedPreferences.getInstance();
  final repository = DarkConfigRepository(preferences);

  runApp(
    ProviderScope(
      overrides: [
        darkConfigViewModelProvider.overrideWith(
          () => DarkConfigViewModel(repository),
        ),
      ],
      child: const TicTokApp(),
    ),
  );
}

class TicTokApp extends ConsumerWidget {
  const TicTokApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'TicTok',
      themeMode: ref.watch(darkConfigViewModelProvider).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        dialogBackgroundColor: Colors.white,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),
        splashColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: Sizes.size16 + Sizes.size2,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.white,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.white,
        ),
        splashColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            fontSize: Sizes.size16 + Sizes.size2,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ko', ''),
        Locale('en', ''),
      ],
    );
  }
}
