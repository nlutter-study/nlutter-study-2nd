import 'package:challenge/authentications/view_models/log_out_vm.dart';
import 'package:challenge/commons/view_models/app_config_vm.dart';
import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:challenge/router.dart';
import 'package:challenge/utils/utils.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class ThreadSettingsScreen extends ConsumerStatefulWidget {
  const ThreadSettingsScreen({super.key});

  @override
  ThreadSettingsScreenState createState() => ThreadSettingsScreenState();
}

class ThreadSettingsScreenState extends ConsumerState<ThreadSettingsScreen> {
  void _onLogOut() async {
    await ref.read(logOutProvider.notifier).logOut();
    if (!context.mounted) return;
    if (ref.read(logOutProvider).hasError) {
      final error = ref.read(logOutProvider).error as FirebaseException;
      showFirebaseErrorSnack(context, error);
      return;
    }
    context.go(Routes.login);
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
    final isLoading = ref.read(logOutProvider).isLoading;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          SwitchListTile.adaptive(
            value: ref.watch(appConfigProvider).isDarkMode,
            onChanged: ref.read(appConfigProvider.notifier).setDarkMode,
            title: Row(
              children: [
                Icon(
                  ref.watch(appConfigProvider).isDarkMode
                      ? FontAwesomeIcons.moon
                      : FontAwesomeIcons.sun,
                ),
                Gaps.h14,
                const Text("Dark mode"),
              ],
            ),
          ),
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
                if (isLoading) const CircularProgressIndicator.adaptive(),
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
