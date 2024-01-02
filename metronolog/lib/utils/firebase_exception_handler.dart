import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void showFirebaseExceptionSnackBar(
  BuildContext context,
  Object error,
) {
  final castedError = error as FirebaseException;
  debugPrint(castedError.toString());
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      showCloseIcon: true,
      content: Text("Please, check your email and password."),
    ),
  );
}
