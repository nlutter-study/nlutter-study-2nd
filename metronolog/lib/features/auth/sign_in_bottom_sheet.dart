import 'package:flutter/material.dart';
import 'package:metronolog/features/auth/models/sign_form_type.dart';
import 'package:metronolog/features/auth/sign_up_bottom_sheet.dart';
import 'package:metronolog/features/auth/widgets/sign_form.dart';
import 'package:metronolog/features/constants/gaps.dart';
import 'package:metronolog/features/constants/sizes.dart';

Future<void> showSignInBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    builder: (context) => const _SignInScreen(),
  );
}

Future<void> popAndShowSignInBottomSheet(BuildContext context) {
  if (Navigator.of(context).canPop()) {
    Navigator.pop(context);
  }
  return showModalBottomSheet(
    context: context,
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    builder: (context) => const _SignInScreen(),
  );
}

class _SignInScreen extends StatelessWidget {
  const _SignInScreen({super.key});

  void _onTapCreateAccount(BuildContext context) {
    popAndShowSignUpBottomSheet(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign in'),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.close,
              size: Sizes.size20,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size36,
            vertical: Sizes.size16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SignForm(
                formType: SignFormType.signIn,
              ),
              Gaps.h16,
              GestureDetector(
                onTap: () => _onTapCreateAccount(context),
                child: Text(
                  'Create an account.',
                  style: TextStyle(
                    fontSize: Sizes.size12,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
              Gaps.h32,
            ],
          ),
        ),
      ),
    );
  }
}
