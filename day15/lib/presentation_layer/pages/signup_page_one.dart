import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum PhoneNumberOrEmailAddress {
  phoneNumber,
  emailAddress,
  none;

  String get label {
    switch (this) {
      case PhoneNumberOrEmailAddress.phoneNumber:
        return 'Phone number';
      case PhoneNumberOrEmailAddress.emailAddress:
        return 'Email';
      case PhoneNumberOrEmailAddress.none:
        return 'Phone number or email address';
      default:
        return '';
    }
  }

  String get switchLabel {
    switch (this) {
      case PhoneNumberOrEmailAddress.phoneNumber:
        return 'Use email instead';
      case PhoneNumberOrEmailAddress.emailAddress:
        return 'Use phone instead';
      case PhoneNumberOrEmailAddress.none:
        return '';
      default:
        return '';
    }
  }
}

class SignupPageOne extends StatefulWidget {
  const SignupPageOne({super.key});

  @override
  State<SignupPageOne> createState() => _SignupPageOneState();
}

class _SignupPageOneState extends State<SignupPageOne> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberOrEmailAddressController =
      TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();

  PhoneNumberOrEmailAddress _phoneNumberOrEmailAddress =
      PhoneNumberOrEmailAddress.none;

  bool _isKeyboardVisible = false;
  bool _isDatePickerVisible = true;

  @override
  Widget build(BuildContext context) {
    _isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

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
            _phoneNumberOrEmailAddressFormField(),
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
      ),
    );
  }

  _nameFormField() {
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        labelText: 'Name',
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        suffixIcon: _isNameValid(_nameController.text)
            ? Container(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: const FaIcon(
                  FontAwesomeIcons.solidCircleCheck,
                  color: Colors.green,
                  size: 20,
                ),
              )
            : null,
      ),
      onChanged: (value) {
        setState(() {});
      },
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
      validator: (value) {
        if (_isNameValid(value)) {
          return null;
        }
        return 'Please enter your name';
      },
    );
  }

  _isNameValid(value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    return true;
  }

  _phoneNumberOrEmailAddressFormField() {
    return TextFormField(
      controller: _phoneNumberOrEmailAddressController,
      decoration: InputDecoration(
        labelText: _phoneNumberOrEmailAddress.label,
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        suffixIcon: _isPhoneNumberOrEmailAddressValid(
                _phoneNumberOrEmailAddressController.text)
            ? Container(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: const FaIcon(
                  FontAwesomeIcons.solidCircleCheck,
                  color: Colors.green,
                  size: 20,
                ),
              )
            : null,
      ),
      onChanged: (value) {
        _setPhoneNumberOrEmailAddress(value);
        setState(() {});
      },
      style: TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 18,
      ),
      validator: (value) {
        if (_isPhoneNumberOrEmailAddressValid(value)) {
          return null;
        }
        return 'Please enter your name';
      },
    );
  }

  _isPhoneNumberOrEmailAddressValid(value) {
    if (value == null || value.isEmpty) {
      return false;
    }

    if (_phoneNumberOrEmailAddress == PhoneNumberOrEmailAddress.phoneNumber) {
      final bool isPhoneNumber = RegExp(r'^[0-9\+\-\(\)]+$').hasMatch(value);

      if (!isPhoneNumber) {
        return false;
      }
    }

    if (_phoneNumberOrEmailAddress == PhoneNumberOrEmailAddress.emailAddress) {
      final bool isEmail =
          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);

      if (!isEmail) {
        return false;
      }
    }

    return true;
  }

  _setPhoneNumberOrEmailAddress(value) {
    if (value.isEmpty) {
      _phoneNumberOrEmailAddress = PhoneNumberOrEmailAddress.none;
      return;
    }

    if (_phoneNumberOrEmailAddress == PhoneNumberOrEmailAddress.none) {
      final bool isDigit = RegExp(r'^\d$').hasMatch(value);

      if (isDigit) {
        _phoneNumberOrEmailAddress = PhoneNumberOrEmailAddress.phoneNumber;
      } else {
        _phoneNumberOrEmailAddress = PhoneNumberOrEmailAddress.emailAddress;
      }
    }
  }

  _dateOfBirthFormField() {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Date of birth',
      ),
      controller: _dateOfBirthController,
      onTap: () {
        _showDatePicker();
      },
    );
  }

  void _showDatePicker() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return Container(
          height: MediaQuery.of(context).copyWith().size.height / 3,
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime newDate) {
              // Handle the date change here
            },
          ),
        );
      },
    );
  }

  Widget _bottomAppBar() {
    return BottomAppBar(
      child: Padding(
        padding: EdgeInsets.only(
          left: 32.0,
          right: 32.0,
          bottom: _isKeyboardVisible
              ? MediaQuery.of(context).viewInsets.bottom + 5
              : 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _switchPhoneNumberOrEmailAddressButton(),
            _nextPageButton()
          ],
        ),
      ),
    );
  }

  _switchPhoneNumberOrEmailAddressButton() {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            switch (_phoneNumberOrEmailAddress) {
              case PhoneNumberOrEmailAddress.phoneNumber:
                _phoneNumberOrEmailAddress =
                    PhoneNumberOrEmailAddress.emailAddress;
                break;
              case PhoneNumberOrEmailAddress.emailAddress:
                _phoneNumberOrEmailAddress =
                    PhoneNumberOrEmailAddress.phoneNumber;
                break;
              case PhoneNumberOrEmailAddress.none:
                break;
            }
          },
        );
      },
      child: Text(
        _phoneNumberOrEmailAddress.switchLabel,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
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
          ),
        ),
      ),
    );
  }
}
