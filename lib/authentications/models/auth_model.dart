import 'package:firebase_auth/firebase_auth.dart';

class AuthModel {
  final User? user;
  final bool isLoggedIn;

  AuthModel({required this.user, required this.isLoggedIn});
}
