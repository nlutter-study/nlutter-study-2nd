import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok/features/settings/view_models/dark_config_vm.dart';

bool isDarkMode(BuildContext context, WidgetRef ref) {
  return ref.watch(darkConfigViewModelProvider).isDark
      ? MediaQuery.of(context).platformBrightness == Brightness.light
      : MediaQuery.of(context).platformBrightness == Brightness.dark;
}
