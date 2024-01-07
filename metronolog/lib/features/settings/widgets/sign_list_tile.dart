import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/sign_in_bottom_sheet.dart';
import 'package:metronolog/features/auth/view_models/auth_view_model.dart';
import 'package:metronolog/features/constants/sizes.dart';

class SignListTile extends ConsumerWidget {
  const SignListTile({super.key});

  Future<void> _onSignOut(WidgetRef ref) async {
    await ref.read(authViewModel.notifier).signOut();
  }

  Future<void> _onSignIn(BuildContext context) async {
    await showSignInBottomSheet(context);
  }

  String _getMaskedEmail(WidgetRef ref) {
    final splitEmails = ref.read(authViewModel).value!.email!.split("@");
    final maskedFirstEmail = splitEmails[0].replaceRange(
      (splitEmails[0].length) > 3 ? splitEmails[0].length - 3 : 0,
      splitEmails[0].length,
      '***',
    );
    return "$maskedFirstEmail\@${splitEmails[1]}";
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authViewModel.notifier).isLoggedIn()
        ? GestureDetector(
            onTap: () => _onSignOut(ref),
            child: ListTile(
              leading: Icon(
                Icons.person_outline,
                size: Sizes.size28,
                color: Theme.of(context).colorScheme.error,
              ),
              title: Text(
                "Sign out (email: ${_getMaskedEmail(ref)})",
              ),
              titleTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.error,
                fontSize: Sizes.size16,
              ),
              trailing: ref.watch(authViewModel).isLoading
                  ? const CircularProgressIndicator.adaptive()
                  : null,
            ),
          )
        : GestureDetector(
            onTap: () => _onSignIn(context),
            child: ListTile(
              leading: Icon(
                Icons.person_outline,
                size: Sizes.size28,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              title: const Text("Sign in"),
              titleTextStyle: TextStyle(
                color: Theme.of(context).colorScheme.onBackground,
                fontSize: Sizes.size16,
              ),
              trailing: ref.watch(authViewModel).isLoading
                  ? const CircularProgressIndicator.adaptive()
                  : null,
            ),
          );
  }
}
