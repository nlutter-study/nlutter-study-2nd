import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/models/sign_form_type.dart';
import 'package:metronolog/features/auth/sign_in_bottom_sheet.dart';
import 'package:metronolog/features/auth/widgets/sign_form.dart';
import 'package:metronolog/features/constants/gaps.dart';
import 'package:metronolog/features/constants/sizes.dart';

Future<void> popAndShowSignUpBottomSheet(BuildContext context) {
  if (Navigator.canPop(context)) {
    Navigator.pop(context);
  }
  return showModalBottomSheet(
    context: context.findRootAncestorStateOfType<NavigatorState>()!.context,
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    builder: (context) => const _SignUpScreen(),
  );
}

class _SignUpScreen extends ConsumerWidget {
  const _SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign up'),
          leading: IconButton(
            onPressed: () => popAndShowSignInBottomSheet(context),
            icon: const Icon(
              Icons.chevron_left,
              size: Sizes.size28,
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size36,
            vertical: Sizes.size16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SignForm(
                formType: SignFormType.signUp,
              ),
              Gaps.h32,
            ],
          ),
        ),
      ),
    );
  }
}
