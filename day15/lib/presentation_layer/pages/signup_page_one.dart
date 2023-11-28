import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPageOne extends StatefulWidget {
  const SignupPageOne({super.key});

  @override
  State<SignupPageOne> createState() => _SignupPageOneState();
}

class _SignupPageOneState extends State<SignupPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leadingWidth: 100,
      leading: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          'Cancel',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      title: const AppTitle(),
    );
  }

  Widget _body() {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            _title(),
            _nameFormField(),
            _phoneNumberOrEmailAdressFormField(),
            _dateOfBirthFormField(),
          ],
        ),
      ),
    );
  }

  _title() {
    return const Text(
      "Create your account",
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w900,
      ),
    );
  }

  _nameFormField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name',
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        suffixIcon: Container(
          // alignment: Alignment.centerRight,
          color: Colors.red,
          child: FaIcon(FontAwesomeIcons.solidCircleCheck, color: Colors.green),
        ),
      ),
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
    );
  }

  _phoneNumberOrEmailAdressFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Phone number or email address',
      ),
    );
  }

  _dateOfBirthFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Date of birth',
      ),
    );
  }

  Widget _bottomAppBar() {
    return BottomAppBar(
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Align(
          alignment: Alignment.centerRight,
          child: _nextPageButton(),
        ),
      ),
    );
  }

  Widget _nextPageButton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignupPageTwo(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          'Next',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
