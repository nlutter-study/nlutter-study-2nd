import 'package:flutter/material.dart';

class NavigatorUtil {
  static Future<dynamic> navigatePush({
    required BuildContext context,
    required Widget screen,
    bool fullscreenDialog = false,
  }) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screen,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  static void navigatePushAndRemoveUntil({
    required BuildContext context,
    required Widget screen,
    bool predicate = false,
  }) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => screen),
      (route) => predicate,
    );
  }
}
