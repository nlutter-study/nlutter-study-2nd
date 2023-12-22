import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok/features/settings/view_models/dark_config_vm.dart';
import 'package:tiktok/utils.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                color: isDarkMode(context, ref) ? Colors.white : Colors.black,
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
          SwitchListTile.adaptive(
            value: ref.watch(darkConfigViewModelProvider).isDark,
            onChanged: (value) {
              ref.read(darkConfigViewModelProvider.notifier).setDark(value);
            },
            title: const Text('Dark mode'),
            subtitle: const Text('Switch to dark mode'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.userPlus,
              color: isDarkMode(context, ref) ? Colors.white : Colors.black,
            ),
            title: const Text('Follow and invite friends'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.bell,
              size: 27,
              color: isDarkMode(context, ref) ? Colors.white : Colors.black,
            ),
            title: const Text('Notifications'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.lock,
              color: isDarkMode(context, ref) ? Colors.white : Colors.black,
            ),
            title: const Text('Privacy'),
            onTap: () {
              context.push('/settings/privacy');
            },
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleUser,
              color: isDarkMode(context, ref) ? Colors.white : Colors.black,
            ),
            title: const Text('Account'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleQuestion,
              color: isDarkMode(context, ref) ? Colors.white : Colors.black,
            ),
            title: const Text('Help'),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.circleInfo,
              color: isDarkMode(context, ref) ? Colors.white : Colors.black,
            ),
            title: const Text('About'),
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
