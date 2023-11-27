import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/login_form_screen.dart';
import 'package:tiktok/features/authentication/widgets/auth_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _onLoginTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _onEmailLoginTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const LoginFormScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: [
              const FaIcon(
                FontAwesomeIcons.twitter,
                size: Sizes.size40,
                color: Colors.blue,
              ),
              Gaps.v80,
              Gaps.v80,
              const Text(
                "See what's happening ",
                style: TextStyle(
                  fontSize: Sizes.size28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v4,
              const Text(
                "in the world right now.",
                style: TextStyle(
                  fontSize: Sizes.size28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v80,
              Gaps.v80,
              GestureDetector(
                onTap: () => _onEmailLoginTap(context),
                child: const AuthButton(
                  icon: FaIcon(FontAwesomeIcons.google),
                  text: "Continue with Google",
                ),
              ),
              Gaps.v16,
              const AuthButton(
                icon: FaIcon(
                  FontAwesomeIcons.apple,
                  size: 30,
                ),
                text: "Continue with Apple",
              ),
              Gaps.v16,
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  padding: const EdgeInsets.all(
                    Sizes.size14,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(
                        "Create account",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: Sizes.size16 + Sizes.size2,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade50,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "계정이 없으신가요?",
              ),
              Gaps.h5,
              GestureDetector(
                onTap: () => _onLoginTap(context),
                child: Text(
                  "가입하기",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
