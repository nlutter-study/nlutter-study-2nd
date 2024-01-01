import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/models/sign_form_type.dart';
import 'package:metronolog/features/constants/gaps.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/main/widgets/metronolog_title.dart';

class SignForm extends ConsumerStatefulWidget {
  const SignForm({
    super.key,
    required this.formType,
  });

  final SignFormType formType;

  @override
  ConsumerState<SignForm> createState() => _SignFormState();
}

class _SignFormState extends ConsumerState<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MetronologTitle(textSize: Sizes.size24),
        Gaps.h16,
        const TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: 'Email',
          ),
        ),
        Gaps.h4,
        const TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(hintText: 'Password'),
          obscureText: true,
        ),
        Gaps.h16,
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: Sizes.size8),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(Sizes.size8),
          ),
          child: Text(
            switch (widget.formType) {
              SignFormType.signIn => 'Sign in',
              SignFormType.signUp => 'Sign up',
            },
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
