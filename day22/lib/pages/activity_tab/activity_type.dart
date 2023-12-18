import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum ActivityType {
  defaultType,
  replyType,
  mentionType,
  followType,
  verifyType;

  Color get color {
    switch (this) {
      case ActivityType.defaultType:
        return Colors.green;
      case ActivityType.replyType:
        return Colors.lightBlue;
      case ActivityType.mentionType:
        return Colors.red;
      case ActivityType.followType:
        return Colors.deepPurpleAccent;
      case ActivityType.verifyType:
        return Colors.deepOrangeAccent;
      default:
        return Colors.green;
    }
  }

  IconData get icon {
    switch (this) {
      case ActivityType.defaultType:
        return FontAwesomeIcons.threads;
      case ActivityType.replyType:
        return Icons.reply;
      case ActivityType.mentionType:
        return FontAwesomeIcons.heart;
      case ActivityType.followType:
        return Icons.person;
      case ActivityType.verifyType:
        return Icons.verified;
      default:
        return Icons.favorite;
    }
  }
}
