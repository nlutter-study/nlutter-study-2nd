import 'package:challenge/commons/repos/app_config_repo.dart';
import 'package:challenge/commons/view_models/app_config_vm.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:challenge/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true; // flutter web 브라우저 라우트 표시
  final preferences = await SharedPreferences.getInstance();
  final repository = AppConfigRepository(preferences);
  runApp(
    ProviderScope(
      overrides: [
        appConfigProvider
            .overrideWith(() => AppConfigViewModel(repository: repository)),
      ],
      child: const FlutterApp(),
    ),
  );
}

class FlutterApp extends ConsumerWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
      themeMode: ref.watch(appConfigProvider).isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      darkTheme: ThemeData(
        textTheme: Typography.whiteCupertino,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        primaryColor: const Color(0xFFE9435A),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
          selectionColor: Color(0xFFE9435A),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: Colors.grey.shade900,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade900,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade900,
            ),
          ),
        ),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: Sizes.size18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      theme: ThemeData(
        textTheme: Typography.blackCupertino,
        useMaterial3: true,
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        primaryColor: const Color(0xFFE9435A),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Color(0xFFE9435A),
          selectionColor: Color(0xFFE9435A),
        ),
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: Sizes.size18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
