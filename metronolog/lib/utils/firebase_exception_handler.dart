import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void showFirebaseExceptionSnackBar({
  required BuildContext context,
  Object? error,
  String message = "Please, check your email and password.",
}) {
  final castedError = error as FirebaseException?;
  debugPrint(castedError?.toString() ?? "castedError is null");
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      showCloseIcon: true,
      content: Text(message),
    ),
  );
}
