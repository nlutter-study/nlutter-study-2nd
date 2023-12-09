import 'package:flutter/material.dart';

class ModalBottomSheetTopDecoration extends StatelessWidget {
  const ModalBottomSheetTopDecoration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      height: 6,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
