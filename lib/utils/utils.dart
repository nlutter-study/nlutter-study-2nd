import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

bool isDarkMode(BuildContext context) =>
    // MediaQuery.of(context).platformBrightness == Brightness.dark;
    Theme.of(context).brightness == Brightness.dark;

Color getTextColorByMode(bool isDarkMode) =>
    isDarkMode ? Colors.white : Colors.black;

Color getBackgroundColorByMode(bool isDarkMode) =>
    isDarkMode ? Colors.black : Colors.white;

String getLocaleText(BuildContext context) {
  return "${Localizations.localeOf(context).countryCode}(${Localizations.localeOf(context).languageCode})";
}

void showFirebaseErrorSnack(BuildContext context, FirebaseException error) {
  final snackBar = SnackBar(
    showCloseIcon: true,
    content: Text(error.message ?? "Something went wrong."),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
