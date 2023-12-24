import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThreadPrivacyScreen extends StatefulWidget {
  const ThreadPrivacyScreen({super.key});

  @override
  State<ThreadPrivacyScreen> createState() => _ThreadPrivacyScreenState();
}

class _ThreadPrivacyScreenState extends State<ThreadPrivacyScreen> {
  bool isPrivacyMode = false;
  void _toggleIsPrivacyMode(newValue) {
    setState(() {
      isPrivacyMode = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Privacy",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
            value: isPrivacyMode,
            onChanged: _toggleIsPrivacyMode,
            secondary: const FaIcon(
              FontAwesomeIcons.lock,
            ),
            title: const Text(
              "Private profile",
            ),
          ),
          _listTile(
            icon: const FaIcon(FontAwesomeIcons.hashtag),
            text: "Mentions",
            trailing: const Text(
              "Everyone",
              style: TextStyle(
                fontSize: Sizes.size14,
                color: Colors.grey,
              ),
            ),
          ),
          _listTile(
            icon: const FaIcon(FontAwesomeIcons.volumeXmark),
            text: "Muted",
          ),
          _listTile(
            icon: const FaIcon(FontAwesomeIcons.eyeSlash),
            text: "Hidden Words",
          ),
          _listTile(
            icon: const FaIcon(FontAwesomeIcons.users),
            text: "Profiles you follow",
          ),
          const Divider(),
          const ListTile(
            title: Text(
              "Other privacy settings",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              "Some settings, like restrict, apply to both Threads and Instagram and can be managed on instagram.",
            ),
            trailing: FaIcon(FontAwesomeIcons.share),
          ),
          _listTile(
            icon: const FaIcon(FontAwesomeIcons.circleXmark),
            text: "Blocked profiles",
            isShareIcon: true,
          ),
          _listTile(
            icon: const FaIcon(FontAwesomeIcons.heartCrack),
            text: "Hide likes",
            isShareIcon: true,
          ),
        ],
      ),
    );
  }

  ListTile _listTile({
    required String text,
    required FaIcon icon,
    bool isShareIcon = false,
    Widget? trailing,
    String? subtitle,
  }) =>
      ListTile(
        leading: icon,
        title: Text(text),
        subtitle: subtitle != null ? Text(subtitle) : null,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (trailing != null) trailing,
            Gaps.h10,
            FaIcon(
              isShareIcon
                  ? FontAwesomeIcons.share
                  : FontAwesomeIcons.chevronRight,
            ),
          ],
        ),
      );
}
