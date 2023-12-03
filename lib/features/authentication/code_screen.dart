import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/password_screen.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({super.key});

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _codeController2 = TextEditingController();
  final TextEditingController _codeController3 = TextEditingController();
  final TextEditingController _codeController4 = TextEditingController();
  final TextEditingController _codeController5 = TextEditingController();
  final TextEditingController _codeController6 = TextEditingController();

  String _code = "";
  bool check = false;

  @override
  void initState() {
    super.initState();

    _codeController.addListener(() {
      setState(() {
        _code = _codeController.text;
      });
    });
    _codeController2.addListener(() {
      setState(() {
        _code = _codeController.text;
      });
    });
    _codeController3.addListener(() {
      setState(() {
        _code = _codeController.text;
      });
    });
    _codeController4.addListener(() {
      setState(() {
        _code = _codeController.text;
      });
    });
    _codeController5.addListener(() {
      setState(() {
        _code = _codeController.text;
      });
    });
    _codeController6.addListener(() {
      setState(() {
        _code = _codeController.text;
      });
    });
  }

  @override
  void dispose() {
    _codeController.dispose();
    _codeController2.dispose();
    _codeController3.dispose();
    _codeController4.dispose();
    _codeController5.dispose();
    _codeController6.dispose();
    super.dispose();
  }

  String? _isCodeValid() {
    if (_code.isEmpty) return "Please enter a code";
    if (_codeController.text.length == 1 &&
        _codeController2.text.length == 1 &&
        _codeController3.text.length == 1 &&
        _codeController4.text.length == 1 &&
        _codeController5.text.length == 1 &&
        _codeController6.text.length == 1) {
      return null;
    }

    return "good";
  }

  void _onNextTap() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => const PasswordScreen(),
      ),
      (route) => false,
    );
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
          mainAxisSize: MainAxisSize.max,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: Sizes.size40,
                  child: TextField(
                    autofocus: true,
                    onChanged: (_) {
                      FocusScope.of(context).nextFocus();
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w700,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _codeController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    textInputAction: TextInputAction.next,
                    cursorColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: Sizes.size40,
                  child: TextField(
                    onChanged: (_) {
                      FocusScope.of(context).nextFocus();
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w700,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _codeController2,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: Sizes.size40,
                  child: TextField(
                    onChanged: (_) {
                      FocusScope.of(context).nextFocus();
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w700,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _codeController3,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: Sizes.size40,
                  child: TextField(
                    onChanged: (_) {
                      FocusScope.of(context).nextFocus();
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w700,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _codeController4,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: Sizes.size40,
                  child: TextField(
                    onChanged: (_) {
                      FocusScope.of(context).nextFocus();
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w700,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _codeController5,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
                SizedBox(
                  width: Sizes.size40,
                  child: TextField(
                    onChanged: (_) {
                      setState(() {
                        check = true;
                      });
                      FocusScope.of(context).unfocus();
                    },
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w700,
                    ),
                    keyboardType: TextInputType.number,
                    controller: _codeController6,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    cursorColor: Colors.white,
                  ),
                ),
              ],
            ),
            Gaps.v16,
            check
                ? const Center(
                    child: FaIcon(
                      FontAwesomeIcons.checkCircle,
                      size: Sizes.size40,
                      color: Colors.green,
                    ),
                  )
                : const Text(
                    "",
                    style: TextStyle(
                      fontSize: Sizes.size16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
            Gaps.v96,
            Gaps.v96,
            Gaps.v96,
            Gaps.v72,
            const Text(
              "Didn't receive email?",
              style: TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
            ),
            Gaps.v16,
            GestureDetector(
              onTap: _onNextTap,
              child: Container(
                alignment: Alignment.centerRight,
                child: FormButton(
                  big: true,
                  disabled: _isCodeValid() != null,
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
