import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            leading: const FaIcon(
              FontAwesomeIcons.lock,
              color: Colors.black,
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
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.at,
              size: 24,
              color: Colors.black,
            ),
            title: Text('Mentions'),
            leadingAndTrailingTextStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bellSlash,
              color: Colors.black,
            ),
            title: Text('Muted'),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.eyeSlash,
              color: Colors.black,
            ),
            title: Text('Hidden Words'),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.users,
              color: Colors.black,
            ),
            title: Text('Profiles you follow'),
            trailing: FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 16,
              color: Colors.black,
            ),
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const ListTile(
            title: Text(
              'Other privacy settings',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: FaIcon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              size: 16,
              color: Colors.black,
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
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleXmark,
              color: Colors.black,
            ),
            title: Text(
              'Blocked profiles',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: FaIcon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              size: 16,
              color: Colors.black,
            ),
          ),
          const ListTile(
            leading: FaIcon(
              FontAwesomeIcons.heartCircleXmark,
              color: Colors.black,
            ),
            title: Text(
              'Hide likes',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            trailing: FaIcon(
              FontAwesomeIcons.arrowUpRightFromSquare,
              size: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
