import 'dart:async';

import 'package:challenge/authentications/repos/authentication_repo.dart';
import 'package:challenge/authentications/view_models/auth_vm.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogOutViewModel extends AsyncNotifier {
  late final AuthenticationRepository _authenticationRepository;

  Future<void> logOut() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => await _authenticationRepository.signOut(),
    );

    if (!state.hasError) {
      ref.read(authProvider.notifier).logOut();
    }
  }

  @override
  FutureOr build() {
    _authenticationRepository = ref.read(authRepoProvider);
  }
}

final logOutProvider = AsyncNotifierProvider<LogOutViewModel, void>(
  () => LogOutViewModel(),
);
