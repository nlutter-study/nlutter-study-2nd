import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';

class SignupPageTwo extends StatefulWidget {
  final String _name;
  final String _phoneNumberOrEmailAddress;
  final String _dateOfBirth;

  const SignupPageTwo({
    super.key,
    required name,
    required phoneNumberOrEmailAddress,
    required dateOfBirth,
  })  : _name = name,
        _phoneNumberOrEmailAddress = phoneNumberOrEmailAddress,
        _dateOfBirth = dateOfBirth;

  @override
  State<SignupPageTwo> createState() => _SignupPageTwoState();
}

class _SignupPageTwoState extends State<SignupPageTwo> {
  bool _isAgreed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _isAgreed ? _bottomNavigationBar() : null,
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
          const SizedBox(height: 16),
          _agreement(),
          const SizedBox(height: 32),
          _termsAndConditions(),
        ],
      ),
    );
  }

  _title() {
    return const Text(
      "Customize your experience",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  _subtitle() {
    return const Text(
      "Track where you see Twitter content across the web",
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
    );
  }

  _agreement() {
    return Row(
      children: [
        _agreementDescription(),
        _agreementSwitch(),
      ],
    );
  }

  Widget _agreementDescription() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: const Text(
        "Twitter uses this data to personalize your experience. This web browsing history will never be stored with your name, email, or phone number.",
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _agreementSwitch() {
    return Theme(
      data: ThemeData(useMaterial3: true),
      child: Switch(
        value: _isAgreed,
        activeColor: Colors.white,
        activeTrackColor: Colors.green,
        onChanged: (value) => setState(() => _isAgreed = value),
      ),
    );
  }

  Widget _termsAndConditions() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Privacy",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Policy",
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
              ". Twitter may use your",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(children: [
          Text(
            "contact information, including your email",
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
        ]),
        Row(
          children: [
            Text(
              "address and phone number for purposes",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "outlined in our Privacy Policy. ",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }

  _bottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
      child: LargeButton(
        text: 'Next',
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignupPageThree(
                name: widget._name,
                phoneNumberOrEmailAddress: widget._phoneNumberOrEmailAddress,
                dateOfBirth: widget._dateOfBirth,
              ),
            ),
          );
        },
      ),
    );
  }
}
