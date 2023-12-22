import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';
import 'package:tiktok/features/onboarding/interests_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();

  String _password = "";

  bool _obscureText = true;

  @override
  void initState() {
    super.initState();

    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  bool _isPasswordValid() {
    return _password.isNotEmpty && _password.length >= 8;
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void _onSubmit() {
    if (!_isPasswordValid()) return;
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const InterestsScreen(),
      ),
      (route) => false,
    );
  }

  void _onClearTap() {
    _passwordController.clear();
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const FaIcon(
            FontAwesomeIcons.twitter,
            size: Sizes.size40,
            color: Colors.blue,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.v40,
              const Text(
                "You'll need a password",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v16,
              Text(
                "Make sure it's 8 characters or more.3",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade600,
                ),
              ),
              Gaps.v10,
              TextField(
                controller: _passwordController,
                onEditingComplete: _onSubmit,
                obscureText: _obscureText,
                autocorrect: false,
                decoration: InputDecoration(
                  suffix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gaps.h16,
                      GestureDetector(
                        onTap: _toggleObscureText,
                        child: FaIcon(
                          _obscureText
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Colors.grey.shade500,
                          size: Sizes.size20,
                        ),
                      ),
                      Gaps.h16,
                      if (_isPasswordValid())
                        GestureDetector(
                          onTap: _onClearTap,
                          child: const FaIcon(
                            FontAwesomeIcons.circleCheck,
                            color: Colors.green,
                            size: Sizes.size20,
                          ),
                        ),
                    ],
                  ),
                  hintText: "Password",
                  errorText: !_isPasswordValid() ? "패스워드는 8자 이상이어야 합니다." : null,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
                cursorColor: Theme.of(context).primaryColor,
              ),
              Gaps.v10,
              Gaps.v28,
              Gaps.v96,
              Gaps.v96,
              Gaps.v96,
              Gaps.v96,
              Gaps.v96,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(disabled: !_isPasswordValid(), big: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
