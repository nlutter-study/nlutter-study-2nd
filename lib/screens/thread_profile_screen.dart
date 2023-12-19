import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:challenge/data/post_data.dart';
import 'package:challenge/screens/thread_settings_screen.dart';
import 'package:challenge/utils/navigator_util.dart';
import 'package:challenge/utils/utils.dart';
import 'package:challenge/widgets/home_screens/thread_post_card.dart';
import 'package:challenge/widgets/profile_screen/sliver_persistent_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThreadProfileScreen extends StatefulWidget {
  const ThreadProfileScreen({super.key});

  @override
  State<ThreadProfileScreen> createState() => _ThreadProfileScreenState();
}

class _ThreadProfileScreenState extends State<ThreadProfileScreen> {
  void _onSettingTap(BuildContext context) {
    NavigatorUtil.navigatePush(
      context: context,
      screen: const ThreadSettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = [
      "Thread",
      "Replies",
    ];
    return DefaultTabController(
      length: tabs.length,
      child: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              _sliverAppBar(context),
              _sliverBoxAdapter(),
              _sliverPersistentHeader(tabs),
            ];
          },
          body: TabBarView(
            children: [
              ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size14,
                  vertical: Sizes.size20,
                ),
                itemCount: 21,
                itemBuilder: (context, index) {
                  return ThreadPostCard(
                    authorNickname: threadPostData[index]["authorNickname"],
                    isCertificated: threadPostData[index]["isCertificated"],
                    text: threadPostData[index]["text"],
                    contentImageUrls: threadPostData[index]["contentImageUrl"],
                    avatarUrl: threadPostData[index]["avatarUrl"],
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  height: Sizes.size40,
                ),
              ),
              ListView.separated(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size14,
                  vertical: Sizes.size20,
                ),
                itemCount: 21,
                itemBuilder: (context, index) {
                  return ThreadPostCard(
                    authorNickname: threadPostData[index]["authorNickname"],
                    isCertificated: threadPostData[index]["isCertificated"],
                    text: threadPostData[index]["text"],
                    contentImageUrls: threadPostData[index]["contentImageUrl"],
                    avatarUrl: threadPostData[index]["avatarUrl"],
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  height: Sizes.size40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SliverPersistentHeader _sliverPersistentHeader(List<String> tabs) {
    return SliverPersistentHeader(
      delegate: ThreadProfileSliverPersistentHeader(
        tabs: tabs,
      ),
      pinned: true,
    );
  }

  SliverToBoxAdapter _sliverBoxAdapter() {
    final isDark = isDarkMode(context);
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size14,
          vertical: Sizes.size20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Han",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.size28,
                      ),
                    ),
                    Gaps.v8,
                    Row(
                      children: [
                        const Text(
                          "0hhanum",
                        ),
                        Gaps.h4,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Sizes.size10,
                            vertical: Sizes.size4,
                          ),
                          decoration: BoxDecoration(
                            color: isDark
                                ? Colors.grey.shade900
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                          ),
                          child: Text(
                            "0hhanum.io",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const CircleAvatar(
                  foregroundImage:
                      NetworkImage("https://picsum.photos/400/400"),
                  radius: Sizes.size32,
                ),
              ],
            ),
            Gaps.v16,
            const Text(
              "I'm hanum",
            ),
            Gaps.v24,
            const Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: Sizes.size14,
                      ),
                      child: CircleAvatar(
                        radius: Sizes.size10,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: Sizes.size10,
                      ),
                    ),
                  ],
                ),
                Gaps.h10,
                Text(
                  "2 followers",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Gaps.v24,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _profileBtn("Edit profile"),
                _profileBtn("Share profile"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SliverAppBar _sliverAppBar(BuildContext context) {
    return SliverAppBar(
      title: const Row(
        children: [
          FaIcon(
            FontAwesomeIcons.globe,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            right: Sizes.size20,
          ),
          child: Row(
            children: [
              const FaIcon(
                FontAwesomeIcons.instagram,
                size: Sizes.size28,
              ),
              Gaps.h14,
              GestureDetector(
                onTap: () => _onSettingTap(context),
                child: const FaIcon(
                  FontAwesomeIcons.ellipsis,
                  size: Sizes.size28,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _profileBtn(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size44,
        vertical: Sizes.size8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
