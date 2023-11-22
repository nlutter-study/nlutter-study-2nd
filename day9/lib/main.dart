import 'package:day9/calendar_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const CalendarApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}
