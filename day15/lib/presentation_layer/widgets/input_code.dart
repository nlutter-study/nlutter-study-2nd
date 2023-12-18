import 'package:flutter/material.dart';

class InputCode extends StatefulWidget {
  final Function(String) onCompleted;

  const InputCode({super.key, required this.onCompleted});

  @override
  State<InputCode> createState() => _InputCodeState();
}

class _InputCodeState extends State<InputCode> {
  static const int _numberOfDigits = 6;
  final List<TextEditingController> _textControllers = List.generate(
    _numberOfDigits,
    (index) => TextEditingController(),
  );
  final List<FocusNode> _textFocusNodes = List.generate(
    _numberOfDigits,
    (index) => FocusNode(),
  );

  @override
  void dispose() {
    for (final controller in _textControllers) {
      controller.dispose();
    }
    for (final focusNode in _textFocusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final letterWidth = (screenWidth * 2 / 3) / _numberOfDigits;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        6,
        (index) {
          return SizedBox(
            width: letterWidth,
            child: TextField(
              controller: _textControllers[index],
              focusNode: _textFocusNodes[index],
              keyboardType: TextInputType.number,
              maxLength: 1,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                counterText: "",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
              onChanged: (value) {
                if (value.length == 1 && index < _numberOfDigits - 1) {
                  FocusScope.of(context).requestFocus(
                    _textFocusNodes[index + 1],
                  );
                }
                if (value.length == 1 && index == _numberOfDigits - 1) {
                  widget.onCompleted(_getCombinedValue());
                  FocusScope.of(context).unfocus();
                }
              },
            ),
          );
        },
      ),
    );
  }

  String _getCombinedValue() {
    return _textControllers.map((controller) => controller.text).join();
  }
}
