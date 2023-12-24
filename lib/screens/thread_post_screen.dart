import 'package:flutter/material.dart';

class ThreadPostScreen extends StatelessWidget {
  const ThreadPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        final height = MediaQuery.of(context).size.height;
        return SizedBox(
          height: height * 0.8,
          child: const Scaffold(
            backgroundColor: Colors.black,
          ),
        );
      },
    );
  }
}
