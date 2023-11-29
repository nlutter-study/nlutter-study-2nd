import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}
