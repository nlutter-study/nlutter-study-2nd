import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/username_screen2.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({
    super.key,
  });

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final TextEditingController _emailController = TextEditingController();

  String _email = "";
  bool _toggleBtn = false;

  @override
  void initState() {
    super.initState();

    _emailController.addListener(() {
      setState(() {
        _email = _emailController.text;
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  String? _isEmailValid() {
    if (_email.isEmpty) {
      return null;
    }
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (!regExp.hasMatch(_email)) {
      return "유효하지 않은 이메일입니다.";
    }
    return null;
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void _onSubmit() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const UsernameScreen2(),
      ),
    );
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
                "Customize your experience",
                style: TextStyle(
                  fontSize: Sizes.size28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v16,
              const Text(
                "Track where you see Twitter content across the web",
                style: TextStyle(
                  fontSize: Sizes.size20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v16,
              Stack(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      right: Sizes.size96,
                    ),
                    child: Text(
                      "Twitter uses this data to personalize your expericence. This web browsing history will never be stored with your name, email, or phone number.",
                      style: TextStyle(
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 30,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _toggleBtn = !_toggleBtn;
                        });
                      },
                      child: Icon(
                        !_toggleBtn
                            ? const FaIcon(
                                FontAwesomeIcons.toggleOff,
                                size: Sizes.size16,
                              ).icon
                            : const FaIcon(
                                FontAwesomeIcons.toggleOn,
                                size: Sizes.size16,
                              ).icon,
                      ),
                    ),
                  ),
                ],
              ),
              Gaps.v60,
              const Text(
                "By signing up, you agree to the our Terms, Privacy Policy, and Cookie Use. Twitter may use your contact information, including your email address for purposes outlined in our Privacy Policy. Learn more",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gaps.v96,
              Gaps.v96,
              Gaps.v72,
              GestureDetector(
                onTap: _onSubmit,
                child: FormButton(
                  disabled: !_toggleBtn,
                  big: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
