import 'package:day15/presentation_layer/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberOrEmailAddressController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();

  PhoneNumberOrEmailAddress _phoneNumberOrEmailAddress = PhoneNumberOrEmailAddress.none;

  bool _isKeyboardVisible = false;
  bool _isDatePickerVisible = false;

  final FocusNode _dateOfBirthFocusNode = FocusNode();

  static const _noVisibleError = '';

  @override
  void initState() {
    super.initState();
    _dateOfBirthFocusNode.addListener(
      () {
        if (_dateOfBirthFocusNode.hasFocus) {
          setState(() => _isDatePickerVisible = true);
        } else {
          setState(() => _isDatePickerVisible = false);
        }
      },
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberOrEmailAddressController.dispose();
    _dateOfBirthController.dispose();
    _dateOfBirthFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return GestureDetector(
      onTap: () {
        _hideDatePicker();
      },
      child: Scaffold(
        appBar: _appBar(),
        body: _body(),
        bottomNavigationBar: _bottomAppBar(),
      ),
    );
  }

  _hideDatePicker() {
    FocusScope.of(context).unfocus();
    setState(() {
      _isDatePickerVisible = false;
    });
  }

  AppBar _appBar() {
    return AppBar(
      leadingWidth: 100,
      leading: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Cancel',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            )),
      ),
      title: const AppTitle(),
    );
  }

  Widget _body() {
    return Form(
      key: _formKey,
      child: Padding(
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
          ],
        ),
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
    return TextFormField(
      controller: _nameController,
      decoration: InputDecoration(
        labelText: 'Name',
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        errorStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
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
        return _noVisibleError;
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
        errorStyle: TextStyle(
          color: Theme.of(context).primaryColor,
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        suffixIcon: _isPhoneNumberOrEmailAddressValid(_phoneNumberOrEmailAddressController.text)
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
        return _noVisibleError;
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
      final bool isEmail = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value);

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
    return Column(
      children: [
        TextFormField(
          focusNode: _dateOfBirthFocusNode,
          decoration: InputDecoration(
            labelText: 'Date of birth',
            labelStyle: const TextStyle(
              color: Colors.black,
            ),
            errorStyle: TextStyle(
              color: Theme.of(context).primaryColor,
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
                width: 2,
              ),
            ),
          ),
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
          controller: _dateOfBirthController,
          onTap: () {
            _isDatePickerVisible = true;
            setState(() {});
          },
          readOnly: true,
          validator: (value) {
            if (_dateOfBirthController.text.isNotEmpty) {
              return null;
            }
            return _noVisibleError;
          },
        ),
        if (_isDatePickerVisible) _descriptionAboutDateOfBirth(),
      ],
    );
  }

  _descriptionAboutDateOfBirth() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        'This will not be shown publicly. Confirm your own age, even if this account is for a business, a pet, or something else.',
        style: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 17,
        ),
      ),
    );
  }

  Widget _bottomAppBar() {
    return BottomAppBar(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _bottomButtons(),
          if (_isDatePickerVisible) _datePicker(),
        ],
      ),
    );
  }

  Widget _bottomButtons() {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        bottom: _isKeyboardVisible ? MediaQuery.of(context).viewInsets.bottom + 5 : 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_switchPhoneNumberOrEmailAddressButton(), _nextPageButton()],
      ),
    );
  }

  Widget _datePicker() {
    return SizedBox(
      height: MediaQuery.of(context).copyWith().size.height / 4,
      child: CupertinoDatePicker(
        mode: CupertinoDatePickerMode.date,
        initialDateTime: DateTime.now(),
        onDateTimeChanged: (DateTime newDate) {
          setState(() {
            _dateOfBirthController.text = DateFormat('MMMM dd, yyyy').format(newDate);
          });
        },
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
                _phoneNumberOrEmailAddress = PhoneNumberOrEmailAddress.emailAddress;
                break;
              case PhoneNumberOrEmailAddress.emailAddress:
                _phoneNumberOrEmailAddress = PhoneNumberOrEmailAddress.phoneNumber;
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
    final bool formIsValid = _formKey.currentState != null ? _formKey.currentState!.validate() : false;

    return GestureDetector(
      onTap: () {
        if (formIsValid) {
          _hideDatePicker();
          _nextPage();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: formIsValid ? Colors.black : Colors.black45,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          'Next',
          style: TextStyle(
            color: formIsValid ? Colors.white : Colors.grey.shade400,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  _nextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignupPageTwo(
          name: _nameController.text,
          phoneNumberOrEmailAddress: _phoneNumberOrEmailAddressController.text,
          dateOfBirth: _dateOfBirthController.text,
        ),
      ),
    );
  }
}
