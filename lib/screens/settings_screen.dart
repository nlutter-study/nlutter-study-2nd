import 'package:flutter/material.dart';
import 'package:threads_clone/screens/privacy_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.2,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              "Follow and invite friends",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.person_add_alt_1_outlined,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
          ),
          const ListTile(
            title: Text(
              "Notifications",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PrivacyScreen(),
                ),
              );
            },
            title: const Text(
              "Privacy",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: const Icon(
              Icons.lock_outline,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
          ),
          const ListTile(
            title: Text(
              "Account",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.person_outline,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
          ),
          const ListTile(
            title: Text(
              "Help",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: Icon(
              Icons.heat_pump_outlined,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
          ),
          ListTile(
            onTap: () {
              showAboutDialog(context: context);
            },
            title: const Text(
              "About",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: const Icon(
              Icons.info_outline,
              color: Colors.black,
            ),
            horizontalTitleGap: 0,
          ),
          const Divider(
            height: 0,
            thickness: 0.5,
          ),
          ListTile(
            onTap: () {
              showAdaptiveDialog(
                context: context,
                builder: (context) => AlertDialog.adaptive(
                  title: const Text("Log out"),
                  content: const Text("Are you sure you want to log out?"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Log out"),
                    ),
                  ],
                ),
              );
            },
            title: const Text(
              "Log out",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
