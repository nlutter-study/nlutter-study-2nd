import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/features/settings/privacy_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
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
          'Settings',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.userPlus,
              color: Colors.black,
            ),
            title: Text('Follow and invite friends'),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bell,
              size: 27,
              color: Colors.black,
            ),
            title: Text('Notifications'),
          ),
          ListTile(
            leading: const FaIcon(
              FontAwesomeIcons.lock,
              color: Colors.black,
            ),
            title: const Text('Privacy'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PrivacyScreen(),
              ),
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleUser,
              color: Colors.black,
            ),
            title: Text('Account'),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleQuestion,
              color: Colors.black,
            ),
            title: Text('Help'),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleInfo,
              color: Colors.black,
            ),
            title: Text('About'),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListTile(
            title: const Text(
              'Log out',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              showCupertinoDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                  title: const Text('Log out'),
                  content: const Text('Are you sure you want to log out?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Log out'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
