import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PasswordInputPage extends StatefulWidget {
  const PasswordInputPage({super.key});

  @override
  State<PasswordInputPage> createState() => _PasswordInputPageState();
}

class _PasswordInputPageState extends State<PasswordInputPage> {
  final _passwordController = TextEditingController();

  bool _isKeyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    _isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const AppTitle(),
    );
  }

  Widget _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          _title(),
          const SizedBox(height: 24),
          _subtitle(),
          const SizedBox(height: 48),
          _passwordFormField(),
        ],
      ),
    );
  }

  _title() {
    return const Text(
      "You'll need a password",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  _subtitle() {
    return Text(
      "Make sure it's 8 characters or more.",
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey.shade700,
      ),
    );
  }

  _passwordFormField() {
    return TextFormField(
      obscureText: true,
      controller: _passwordController,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        suffixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 24, top: 20),
              child: const FaIcon(
                FontAwesomeIcons.eyeSlash,
                color: Colors.grey,
                size: 20,
              ),
            ),
            if (_isPasswordValid(_passwordController.text))
              Container(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: const FaIcon(
                  FontAwesomeIcons.solidCircleCheck,
                  color: Colors.green,
                  size: 20,
                ),
              ),
          ],
        ),
      ),
      onChanged: (value) {
        setState(() {});
      },
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    );
  }

  _isPasswordValid(value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    return true;
  }

  _bottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        bottom: _isKeyboardVisible
            ? MediaQuery.of(context).viewInsets.bottom + 5
            : 16,
      ),
      child: LargeButton(
        enabled: _isPasswordValid(_passwordController.text),
        onTap: _isPasswordValid(_passwordController.text)
            ? () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InterestsPage(),
                  ),
                );
              }
            : null,
        text: "Next",
      ),
    );
  }
}
