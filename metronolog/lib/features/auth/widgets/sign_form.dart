import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:metronolog/features/auth/models/sign_form_type.dart';
import 'package:metronolog/features/auth/view_models/auth_view_model.dart';
import 'package:metronolog/features/constants/gaps.dart';
import 'package:metronolog/features/constants/sizes.dart';
import 'package:metronolog/features/main/widgets/metronolog_title.dart';
import 'package:metronolog/utils/firebase_exception_handler.dart';

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
  late final TextEditingController _emailEditingController;
  late final TextEditingController _passwordEditingController;

  Future<void> _onSubmit() async {
    if (ref.read(authViewModel).isLoading) {
      return;
    }

    final viewModel = ref.read(authViewModel.notifier);
    final email = _emailEditingController.value.text;
    final password = _passwordEditingController.value.text;

    final doSign = switch (widget.formType) {
      SignFormType.signIn => viewModel.signIn,
      SignFormType.signUp => viewModel.signUp,
    };
    await doSign(
      email: email,
      password: password,
    );

    if (ref.read(authViewModel).hasError && context.mounted) {
      showFirebaseExceptionSnackBar(
        context,
        ref.read(authViewModel).error!,
      );
      return;
    }
    if (context.mounted) {
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MetronologTitle(textSize: Sizes.size24),
        Gaps.h16,
        TextField(
          controller: _emailEditingController,
          keyboardType: TextInputType.emailAddress,
          enableSuggestions: false,
          autocorrect: false,
          smartDashesType: SmartDashesType.disabled,
          smartQuotesType: SmartQuotesType.disabled,
          decoration: const InputDecoration(
            hintText: 'Email',
          ),
        ),
        Gaps.h4,
        TextField(
          controller: _passwordEditingController,
          keyboardType: TextInputType.text,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          smartDashesType: SmartDashesType.disabled,
          smartQuotesType: SmartQuotesType.disabled,
          decoration: const InputDecoration(
            hintText: 'Password',
          ),
        ),
        Gaps.h16,
        GestureDetector(
          onTap: _onSubmit,
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: Sizes.size8),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(Sizes.size8),
            ),
            child: ref.watch(authViewModel).isLoading
                ? const CircularProgressIndicator.adaptive()
                : Text(
                    switch (widget.formType) {
                      SignFormType.signIn => 'Sign in',
                      SignFormType.signUp => 'Sign up',
                    },
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
