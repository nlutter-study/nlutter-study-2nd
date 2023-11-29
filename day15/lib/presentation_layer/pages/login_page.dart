import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppTitle(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            _title(),
            const SizedBox(),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return const Text(
      "See what's happening in the world right now.",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget _loginForm() {
    return Column(
      children: [
        _oauthLoginButton(
          icon: Image.asset("assets/images/google_logo.png", height: 24),
          text: "Continue with Google",
        ),
        const SizedBox(height: 8),
        _oauthLoginButton(
          icon: const FaIcon(FontAwesomeIcons.apple, color: Colors.black, size: 26),
          text: "Continue with Apple",
        ),
        const SizedBox(height: 8),
        _dividerBetweenLoginAndCreateAccount(),
        const SizedBox(height: 8),
        _createAccountButton(),
        const SizedBox(height: 32),
        _termsAndConditions(),
        const SizedBox(height: 60),
        _login(),
      ],
    );
  }

  Widget _oauthLoginButton({required Widget icon, required String text}) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(width: 16),
            Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dividerBetweenLoginAndCreateAccount() {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey.shade400)),
        const SizedBox(width: 16),
        Text("or", style: TextStyle(color: Colors.grey.shade700, fontSize: 16)),
        const SizedBox(width: 16),
        Expanded(child: Divider(color: Colors.grey.shade400)),
      ],
    );
  }

  Widget _createAccountButton() {
    return Builder(builder: (context) {
      return LargeButton(
        text: "Create account",
        onTap: () => _navigateToCreateAccount(context: context),
      );
    });
  }

  void _navigateToCreateAccount({required BuildContext context}) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignupPageOne()));
  }

  Widget _termsAndConditions() {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(
            "By signing up, you agree to our ",
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              "Terms",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
          Text(
            ",",
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
            Text(
              ", and ",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Cookie Use",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
            Text(
              ".",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }

  Widget _login() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Have an account already? ",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Log in",
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
