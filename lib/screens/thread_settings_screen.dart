import 'package:challenge/constants/sizes.dart';
import 'package:challenge/router.dart';
import 'package:challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ThreadSettingsScreen extends StatefulWidget {
  const ThreadSettingsScreen({super.key});

  @override
  State<ThreadSettingsScreen> createState() => _ThreadSettingsScreenState();
}

class _ThreadSettingsScreenState extends State<ThreadSettingsScreen> {
  bool isProgressing = false;
  void _onLogOut() {
    setState(() {
      isProgressing = true;
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isProgressing = false;
      });
    });
  }

  void _onPrivacyTap() {
    // NavigatorUtil.navigatePush(
    //   context: context,
    //   screen: const ThreadPrivacyScreen(),
    // );
    context.pushNamed(Routes.privacy);
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: getBackgroundColorByMode(isDark),
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          _listTile(
            text: "Follow and invite friends",
            icon: const FaIcon(
              FontAwesomeIcons.user,
            ),
          ),
          _listTile(
            text: "Notifications",
            icon: const FaIcon(
              FontAwesomeIcons.bell,
            ),
          ),
          _listTile(
            text: "Follow and invite friends",
            icon: const FaIcon(
              FontAwesomeIcons.user,
            ),
          ),
          _listTile(
            text: "Privacy",
            onTap: _onPrivacyTap,
            icon: const FaIcon(
              FontAwesomeIcons.lock,
            ),
          ),
          _listTile(
            text: "Account",
            icon: const FaIcon(
              FontAwesomeIcons.userCheck,
            ),
          ),
          const AboutListTile(
            icon: Padding(
              padding: EdgeInsets.only(
                left: Sizes.size6,
              ),
              child: FaIcon(
                FontAwesomeIcons.info,
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size20,
              vertical: Sizes.size14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: _onLogOut,
                    child: const Text(
                      "Log out",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: Sizes.size16,
                      ),
                    ),
                  ),
                ),
                if (isProgressing) const CircularProgressIndicator.adaptive(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile _listTile({
    required String text,
    required FaIcon icon,
    void Function()? onTap,
  }) {
    return ListTile(
      onTap: onTap,
      leading: icon,
      title: Text(text),
    );
  }
}
