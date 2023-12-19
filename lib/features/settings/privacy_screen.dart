import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok/utils.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _isPrivate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        elevation: 0.5,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: isDarkMode(context) ? Colors.white : Colors.black,
              ),
            ),
            const Text(
              'Back',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        title: const Text(
          'Pravacy',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.lock,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
            title: const Text('Private profile'),
            trailing: CupertinoSwitch(
              value: _isPrivate,
              onChanged: (value) {
                setState(() {
                  _isPrivate = value;
                });
              },
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.at,
              size: 24,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
            title: const Text('Mentions'),
            leadingAndTrailingTextStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bellSlash,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
            title: const Text('Muted'),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.eyeSlash,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
            title: const Text('Hidden Words'),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.users,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
            title: const Text('Profiles you follow'),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            title: Text(
              'Other privacy settings',
              style: TextStyle(
                color: isDarkMode(context) ? Colors.white : Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: FaIcon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              size: 16,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 1,
            ),
            child: Text(
              "Some settings, like restrict, apply to both Threads and Instagram and can be managed on Instagram.",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleXmark,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
            title: Text(
              'Blocked profiles',
              style: TextStyle(
                color: isDarkMode(context) ? Colors.white : Colors.black,
              ),
            ),
            trailing: FaIcon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              size: 16,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.heartCircleXmark,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
            title: Text(
              'Hide likes',
              style: TextStyle(
                color: isDarkMode(context) ? Colors.white : Colors.black,
              ),
            ),
            trailing: FaIcon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              size: 16,
              color: isDarkMode(context) ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
