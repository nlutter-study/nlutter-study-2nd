import 'package:challenge/constants/sizes.dart';
import 'package:challenge/data/post_data.dart';
import 'package:challenge/navs/thread_main_nav.dart';
import 'package:challenge/utils/utils.dart';
import 'package:challenge/widgets/home_screens/thread_post_card.dart';
import 'package:flutter/material.dart';

class ThreadHomeScreen extends StatelessWidget {
  const ThreadHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: Sizes.size40,
          child: Image.network(
            threadLogoUrl,
            color: getTextColorByMode(isDark),
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size14,
        ),
        itemCount: 21,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          return ThreadPostCard(
            authorNickname: threadPostData[index]["authorNickname"],
            isCertificated: threadPostData[index]["isCertificated"],
            text: threadPostData[index]["text"],
            contentImageUrls: threadPostData[index]["contentImageUrl"],
            avatarUrl: threadPostData[index]["avatarUrl"],
          );
        },
      ),
    );
  }
}
