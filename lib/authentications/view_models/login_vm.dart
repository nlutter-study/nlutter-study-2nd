import 'dart:async';
import 'package:challenge/authentications/repos/authentication_repo.dart';
import 'package:challenge/authentications/view_models/auth_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginViewModel extends AsyncNotifier<void> {
  late final AuthenticationRepository _authenticationRepository;

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await _authenticationRepository.signIn(email, password),
    );

    if (!state.hasError) {
      final currentUser = _authenticationRepository.user;
      ref.read(authProvider.notifier).logIn(currentUser!);
    }
  }

  @override
  FutureOr<void> build() {
    _authenticationRepository = ref.read(authRepoProvider);
  }
}

final loginProvider =
    AsyncNotifierProvider<LoginViewModel, void>(() => LoginViewModel());
