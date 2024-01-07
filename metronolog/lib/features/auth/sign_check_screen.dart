import 'package:flutter/material.dart';
import 'package:metronolog/features/auth/sign_in_bottom_sheet.dart';

class SignCheckScreen extends StatelessWidget {
  const SignCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You need to sign in to use this feature.'),
          TextButton(
            onPressed: () => showSignInBottomSheet(context),
            child: const Text('Sign in'),
          ),
        ],
      ),
    );
  }
}
