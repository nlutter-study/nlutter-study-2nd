import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok/features/settings/view_models/dark_config_vm.dart';

bool isDarkMode(BuildContext context) {
  return context.watch<DarkConfigViewModel>().isDark
      ? MediaQuery.of(context).platformBrightness == Brightness.light
      : MediaQuery.of(context).platformBrightness == Brightness.dark;
}
