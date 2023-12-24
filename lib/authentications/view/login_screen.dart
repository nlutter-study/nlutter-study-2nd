import 'package:challenge/authentications/view/widgets/auth_button.dart';
import 'package:challenge/authentications/view/widgets/auth_bottm_app_bar_button.dart';
import 'package:challenge/authentications/view/widgets/main_logo.dart';
import 'package:challenge/authentications/view_models/login_vm.dart';
import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:challenge/router.dart';
import 'package:challenge/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<String, String> _formData = {};
  final int passwordMinLength = 5;
  void _unFocusTextInput() {
    FocusScope.of(context).unfocus();
  }

  void _goToSignUpScreen() {
    context.push(Routes.signUp);
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required.";
    }
    final emailRegExp = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
    if (!emailRegExp.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }

    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required.";
    }
    if (value.length < passwordMinLength) {
      return 'Password must be at least $passwordMinLength characters long.';
    }

    return null;
  }

  Future<void> _onSubmit() async {
    if (_formKey.currentState == null) return;
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    _formKey.currentState!.save();
    await _login();
  }

  void _onSave(String key, String value) {
    _formData[key] = value;
  }

  Future<void> _login() async {
    await ref
        .read(loginProvider.notifier)
        .login(_formData["email"]!, _formData["password"]!);

    if (!context.mounted) return;
    if (ref.read(loginProvider).hasError) {
      final error = ref.read(loginProvider).error as FirebaseException;
      showFirebaseErrorSnack(context, error);
      return;
    }
    context.go("/home");
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.size18),
      child: Scaffold(
        appBar: _appBar(),
        body: _body(isDark),
        bottomNavigationBar: _bottomAppBar(),
      ),
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      child: Column(
        children: [
          AuthBottomAppBarButton(
            onTap: _goToSignUpScreen,
            text: "Create new account",
          ),
        ],
      ),
    );
  }

  Column _body(bool isDark) {
    return Column(
      children: [
        const MainLogo(),
        Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    onTapOutside: (e) => _unFocusTextInput(),
                    decoration: const InputDecoration(
                      hintText: "Email",
                    ),
                    onSaved: (newValue) => _onSave("email", newValue!),
                    validator: _validateEmail,
                  ),
                  Gaps.v20,
                  TextFormField(
                    onTapOutside: (e) => _unFocusTextInput(),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                    ),
                    onSaved: (newValue) => _onSave("password", newValue!),
                    validator: _validatePassword,
                  ),
                  Gaps.v24,
                ],
              ),
            ),
            AuthButton(
              text: "Log in",
              onTap: _onSubmit,
              enabled: !ref.watch(loginProvider).isLoading,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot password?",
                style: TextStyle(color: getTextColorByMode(isDark)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(getLocaleText(context)),
    );
  }
}
