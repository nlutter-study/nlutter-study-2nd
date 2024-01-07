import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/repositories/firebase_auth_repository.dart';

final authViewModel = AsyncNotifierProvider<AuthViewModel, User?>(
  () => AuthViewModel(),
);

class AuthViewModel extends AsyncNotifier<User?> {
  late final FirebaseAuthRepository _repository;

  @override
  FutureOr<User?> build() {
    _repository = ref.read(firebaseAuthRepository);
    return _repository.user;
  }

  bool isLoggedIn() => state.value != null;

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _repository.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _repository.user;
    });
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _repository.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return _repository.user;
    });
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await _repository.signOut();
      return _repository.user;
    });
  }
}
