import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPageThree extends StatelessWidget {
  final String _name;
  final String _phoneNumberOrEmailAddress;
  final String _dateOfBirth;

  const SignupPageThree({
    super.key,
    required name,
    required phoneNumberOrEmailAddress,
    required dateOfBirth,
  })  : _name = name,
        _phoneNumberOrEmailAddress = phoneNumberOrEmailAddress,
        _dateOfBirth = dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar(BuildContext context) {
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
          const SizedBox(height: 32),
          _nameFormField(),
          const SizedBox(height: 24),
          _phoneNumberOrEmailAddressFormField(),
          const SizedBox(height: 24),
          _dateOfBirthFormField(),
          const Expanded(child: SizedBox()),
          _termsAndConditions(),
        ],
      ),
    );
  }

  _title() {
    return const Text(
      "Create your account",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  _nameFormField() {
    return Builder(builder: (context) {
      return TextFormField(
        initialValue: _name,
        decoration: InputDecoration(
          labelText: 'Name',
          labelStyle: const TextStyle(
            color: Colors.black,
          ),
          suffixIcon: Container(
            padding: const EdgeInsets.only(left: 24, top: 20),
            child: const FaIcon(
              FontAwesomeIcons.solidCircleCheck,
              color: Colors.green,
              size: 20,
            ),
          ),
        ),
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
        ),
        readOnly: true,
      );
    });
  }

  _phoneNumberOrEmailAddressFormField() {
    final bool isEmail = _isValidEmail(_phoneNumberOrEmailAddress);
    final String label = isEmail ? 'Email' : 'Phone number';

    return Builder(
      builder: (context) {
        return TextFormField(
          initialValue: _phoneNumberOrEmailAddress,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
            suffixIcon: Container(
              padding: const EdgeInsets.only(left: 24, top: 20),
              child: const FaIcon(
                FontAwesomeIcons.solidCircleCheck,
                color: Colors.green,
                size: 20,
              ),
            ),
          ),
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
          readOnly: true,
        );
      },
    );
  }

  _isValidEmail(String emailCandidate) {
    if (emailCandidate.isEmpty) {
      return false;
    }

    final bool isEmail =
        RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(emailCandidate);

    if (!isEmail) {
      return false;
    }

    return true;
  }

  _dateOfBirthFormField() {
    return Builder(
      builder: (context) {
        return TextFormField(
          initialValue: _dateOfBirth,
          decoration: InputDecoration(
            labelText: 'Date of birth',
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
            suffixIcon: Container(
              padding: const EdgeInsets.only(left: 24, top: 20),
              child: const FaIcon(
                FontAwesomeIcons.solidCircleCheck,
                color: Colors.green,
                size: 20,
              ),
            ),
          ),
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
          readOnly: true,
        );
      },
    );
  }

  Widget _termsAndConditions() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "By signing up, you agree to the ",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Terms of Service",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "and ",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Privacy Policy",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
            Text(
              ", including ",
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
        Row(children: [
          Text(
            "Twitter may use your contact information,",
            style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
          ),
        ]),
        Row(
          children: [
            Text(
              "including your email address and phone number",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "for purposes outlined in our Privacy Policy,",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "like keeping your account secure and ",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "personalizing our seervices, including ads .",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Learn more",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
            Text(
              ". Others will be able to find you by",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "email or phone number, when provided, unless",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
          ],
        ),
        Row(
          children: [
            Text(
              "you choose otherwise ",
              style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "here",
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

  _bottomNavigationBar() {
    return Builder(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16),
          child: LargeButton(
            text: 'Sign up',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VerificationPage(
                    phoneNumberOrEmailAddress: _phoneNumberOrEmailAddress,
                  ),
                ),
              );
            },
            backgroundColor: Theme.of(context).primaryColor,
          ),
        );
      },
    );
  }
}
