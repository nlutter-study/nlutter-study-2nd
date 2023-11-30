import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InterestCard extends StatelessWidget {
  final String interest;
  final bool selected;

  const InterestCard(
      {super.key, required this.interest, required this.selected});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width / 2 - 24;
    final height = width / 2;

    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: selected
              ? Border.all(color: Colors.blue)
              : Border.all(color: Colors.grey.shade300, width: 2),
          color: selected ? Colors.blue : Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FaIcon(
                  FontAwesomeIcons.solidCircleCheck,
                  color: selected ? Colors.white : Colors.transparent,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  interest,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: selected ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
