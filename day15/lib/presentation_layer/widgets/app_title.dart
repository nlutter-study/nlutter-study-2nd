import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return FaIcon(
      FontAwesomeIcons.twitter,
      color: Theme.of(context).primaryColor,
    );
  }
}
