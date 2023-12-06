import 'package:flutter/material.dart';

class PostX2 extends StatelessWidget {
  const PostX2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        elevation: 1,
        title: const Text('New thread'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: const Text(
              textAlign: TextAlign.center,
              "Cancel",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
