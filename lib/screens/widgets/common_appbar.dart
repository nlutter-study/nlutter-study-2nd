import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommonAppbar extends StatelessWidget {
  const CommonAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: const FaIcon(
        FontAwesomeIcons.threads,
        color: Colors.black,
        size: 32,
      ),
    );
  }
}
