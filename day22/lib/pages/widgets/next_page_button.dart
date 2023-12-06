import 'package:flutter/material.dart';

class NextPageButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const NextPageButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: ListTile(
        onTap: onPressed,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
