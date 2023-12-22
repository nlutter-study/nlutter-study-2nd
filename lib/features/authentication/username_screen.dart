import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/email_screen.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';

class UsernameScreen extends StatefulWidget {
  const UsernameScreen({super.key});

  @override
  State<UsernameScreen> createState() => _UsernameScreenState();
}

class _UsernameScreenState extends State<UsernameScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();

  final DateTime _initialDate = DateTime.now();
  String _username = "";
  String _email = "";

  @override
  void initState() {
    super.initState();
    _setTextFieldDate(_initialDate);
    _usernameController.addListener(() {
      setState(() {
        _username = _usernameController.text;
      });
    });
    _emailController.addListener(() {
      setState(() {
        _email = _emailController.text;
      });
    });
  }

  @override
  void dispose() {
    _birthdayController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _setTextFieldDate(DateTime date) {
    final textDate = date.toString().split(" ").first;
    _birthdayController.value = TextEditingValue(text: textDate);
  }

  String? _isEmailValid() {
    if (_email.isEmpty) {
      return null;
    }
    final regExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );

    if (!regExp.hasMatch(_email)) {
      return "유효하지 않은 이메일입니다.";
    }
    return null;
  }

  void _onNextTap() {
    if (_username.isEmpty) {
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const EmailScreen(),
      ),
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
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            width: Sizes.size40,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(
              horizontal: Sizes.size16,
            ),
            child: const Text(
              "Cancel",
              style: TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
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
              "Create your account",
              style: TextStyle(
                fontSize: Sizes.size24 + Sizes.size2,
                fontWeight: FontWeight.w700,
              ),
            ),
            Gaps.v16,
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                errorText: _username.isEmpty ? "이름을 입력해주세요." : null,
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
                labelText: "Name",
                alignLabelWithHint: true,
                suffix: _username.isNotEmpty
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
            TextField(
              controller: _emailController,
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
                suffix: _email.isNotEmpty && _isEmailValid() == null
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
              onTap: () => {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) => SizedBox(
                    height: Sizes.size96 * 3,
                    child: CupertinoDatePicker(
                      maximumDate: _initialDate,
                      initialDateTime: _initialDate,
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: _setTextFieldDate,
                    ),
                  ),
                ),
              },
              child: TextField(
                controller: _birthdayController,
                enabled: false,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  alignLabelWithHint: true,
                  labelText: "Date of birth",
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                cursorColor: Theme.of(context).primaryColor,
              ),
            ),
            Gaps.v8,
            const Text(
              "This will not be shown publicly. Confirm your own age, even if this account is for a business, a pet, or something else.",
              style: TextStyle(
                fontSize: Sizes.size16,
                color: Colors.black54,
              ),
            ),
            Gaps.v16,
            GestureDetector(
              onTap: _onNextTap,
              child: Container(
                alignment: Alignment.center,
                child: FormButton(
                  big: true,
                  disabled: _username.isEmpty ||
                      _isEmailValid() != null ||
                      _email.isEmpty,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
