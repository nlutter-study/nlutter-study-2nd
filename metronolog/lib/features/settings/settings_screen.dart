import 'package:flutter/material.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/settings/widgets/sign_list_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const routeUrl = "/settings";
  static const routeName = "settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.size12),
        child: Column(
          children: [
            SignListTile(),
          ],
        ),
      ),
    );
  }
}
