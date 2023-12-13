import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_clone/screens/home_screen.dart';
import 'package:threads_clone/screens/main_navigation_screen.dart';
import 'package:threads_clone/screens/activity_screen.dart';
import 'package:threads_clone/screens/post_screen.dart';
import 'package:threads_clone/screens/profile_screen.dart';
import 'package:threads_clone/screens/search_screen.dart';

void main() {
  runApp(const ThreadsClone());
}

class ThreadsClone extends StatelessWidget {
  const ThreadsClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threads Clone',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: false,
      ),
      home: const MainNavigationScreen(),
    );
  }
}
