import 'package:flutter/material.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';
import 'package:tiktok/features/onboarding/interests_screen.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => const InterestsScreen(),
            ), (route) {
          return false;
        });
      }
    }
  }

  Map<String, String> formData = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('로그인'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size36,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '이메일',
                ),
                validator: (value) {
                  return null;

                  // return '이메일을 입력해주세요.';
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    formData['email'] = newValue;
                  }
                },
              ),
              Gaps.v16,
              TextFormField(
                decoration: const InputDecoration(
                  labelText: '비밀번호',
                ),
                validator: (value) {
                  return null;

                  // return '비밀번호를 입력해주세요.';
                },
                onSaved: (newValue) {
                  if (newValue != null) {
                    formData['password'] = newValue;
                  }
                },
              ),
              Gaps.v28,
              GestureDetector(
                onTap: _onSubmitTap,
                child: const FormButton(disabled: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
