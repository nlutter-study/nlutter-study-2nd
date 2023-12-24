import 'package:challenge/authentications/models/auth_model.dart';
import 'package:challenge/authentications/repos/authentication_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthViewModel extends Notifier<AuthModel> {
  void logIn(User user) {
    state = AuthModel(user: user, isLoggedIn: true);
  }

  void logOut() {
    state = AuthModel(user: null, isLoggedIn: false);
  }

  @override
  AuthModel build() {
    final authRepo = ref.read(authRepoProvider);
    return AuthModel(user: authRepo.user, isLoggedIn: authRepo.isLoggedIn);
  }
}

final authProvider = NotifierProvider<AuthViewModel, AuthModel>(
  () => AuthViewModel(),
);
