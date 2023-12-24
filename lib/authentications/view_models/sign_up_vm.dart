import 'dart:async';

import 'package:challenge/authentications/repos/authentication_repo.dart';
import 'package:challenge/authentications/view_models/auth_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpViewModel extends AsyncNotifier {
  late final AuthenticationRepository _authenticationRepository;

  Future<void> signUp(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await _authenticationRepository.signUp(email, password),
    );
    if (!state.hasError) {
      final currentUser = _authenticationRepository.user;
      ref.read(authProvider.notifier).logIn(currentUser!);
    }
  }

  @override
  FutureOr build() {
    _authenticationRepository = ref.read(authRepoProvider);
  }
}

final signUpProvider =
    AsyncNotifierProvider<SignUpViewModel, void>(() => SignUpViewModel());
