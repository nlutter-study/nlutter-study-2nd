import 'package:flutter/material.dart';

bool isDarkMode(BuildContext context) =>
    MediaQuery.of(context).platformBrightness == Brightness.dark;

Color getTextColorByMode(bool isDarkMode) =>
    isDarkMode ? Colors.white : Colors.black;

Color getBackgroundColorByMode(bool isDarkMode) =>
    isDarkMode ? Colors.black : Colors.white;
