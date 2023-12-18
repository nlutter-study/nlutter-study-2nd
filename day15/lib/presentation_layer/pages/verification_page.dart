import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VerificationPage extends StatefulWidget {
  final String _phoneNumberOrEmailAddress;

  const VerificationPage({super.key, required phoneNumberOrEmailAddress})
      : _phoneNumberOrEmailAddress = phoneNumberOrEmailAddress;

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  bool _inputComplete = false;
  bool _validated = false;
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
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back, color: Colors.black),
      ),
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
          const SizedBox(height: 32),
          InputCode(
            onCompleted: (code) {
              setState(() {
                _inputComplete = true;
                _validate(code);
              });
            },
          ),
          const SizedBox(height: 20),
          _validatedOrNot(),
        ],
      ),
    );
  }

  _title() {
    return const Text(
      "We sent you a code",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  _subtitle() {
    return Text(
      "Enter it below to verify\n${widget._phoneNumberOrEmailAddress}",
      style: TextStyle(
        fontSize: 20,
        color: Colors.grey.shade700,
      ),
    );
  }

  _validate(String code) {
    if (code == "123456") {
      setState(() {
        _validated = true;
      });
    }
  }

  Widget _validatedOrNot() {
    if (_validated == false) {
      return SizedBox.shrink();
    } else {
      return const Center(
        child: FaIcon(
          FontAwesomeIcons.solidCircleCheck,
          color: Colors.green,
          size: 32,
        ),
      );
    }
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {}, child: const Text("Didn't receive email?")),
          ),
          LargeButton(
            enabled: _validated,
            onTap: _inputComplete
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordInputPage(),
                      ),
                    );
                  }
                : null,
            text: "Next",
          ),
        ],
      ),
    );
  }
}
