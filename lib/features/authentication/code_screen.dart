import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  final TextEditingController _codeController = TextEditingController();

  String _code = "";

  @override
  void initState() {
    super.initState();

    _codeController.addListener(() {
      setState(() {
        _code = _codeController.text;
      });
    });
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  String? _isEmailValid() {
    if (_code.isEmpty) {
      return null;
    }

    return null;
  }

  void _onNextTap() {
    // Navigator.of(context).push(
    // MaterialPageRoute(
    // builder: (context) => const EmailScreen(),
    // ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: Sizes.size96,
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
              "We Sent you a code",
              style: TextStyle(
                fontSize: Sizes.size24 + Sizes.size2,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gaps.v16,
            const Text(
              "Enter it below to verify",
              style: TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            const Text(
              "wonjang@naver.com",
              style: TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
            Gaps.v40,
            TextField(
              controller: _codeController,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () {},
              autocorrect: false,
              decoration: InputDecoration(
                errorText: _isEmailValid(),
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
                alignLabelWithHint: true,
                labelText: "Email",
                suffix: _code.isNotEmpty && _isEmailValid() == null
                    ? GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.check_circle,
                          size: Sizes.size24,
                          color: Colors.green,
                        ),
                      )
                    : null,
              ),
            ),
            Gaps.v16,
            GestureDetector(
              onTap: _onNextTap,
              child: Container(
                alignment: Alignment.centerRight,
                child: FormButton(
                  big: true,
                  disabled: _isEmailValid() != null || _code.isEmpty,
                  signUp: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
