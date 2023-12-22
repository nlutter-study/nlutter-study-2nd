import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/utils.dart';

class OnlyPost extends ConsumerWidget {
  const OnlyPost({
    super.key,
    required this.faker,
  });

  final Faker faker;

  void onTapDot(BuildContext context) {
    showModalBottomSheet(
      clipBehavior: Clip.hardEdge,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) => Container(
        height: 600,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: Sizes.size8,
            ),
            const Divider(
              thickness: 5,
              indent: 180,
              endIndent: 180,
            ),
            const SizedBox(
              height: Sizes.size8,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size20,
                    vertical: Sizes.size16,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.size20,
                        vertical: Sizes.size16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Unfollow",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                          const Text(
                            "Mute",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size20,
                    vertical: Sizes.size16,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.size20,
                        vertical: Sizes.size16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            "Hide",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                          GestureDetector(
                            onTap: () {
                              onTapReport(context);
                            },
                            child: const Text(
                              "Report",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onTapReport(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (contetxt) => ListView(
        children: [
          Container(
            height: 600,
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: Sizes.size8,
                ),
                const Divider(
                  thickness: 5,
                  indent: 180,
                  endIndent: 180,
                ),
                const SizedBox(
                  height: Sizes.size8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size20,
                    vertical: Sizes.size16,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Report",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Gaps.v16,
                      Container(
                        height: 1,
                        color: Colors.grey.shade300,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gaps.v16,
                          Text(
                            textAlign: TextAlign.start,
                            "Why are you reporting this thread?",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gaps.v16,
                          Text(
                            textAlign: TextAlign.start,
                            "Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emrgency services - don't wait.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        style: ListTileStyle.list,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text(
                          "I just don't like it",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: const FaIcon(
                          FontAwesomeIcons.angleRight,
                          color: Colors.grey,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        style: ListTileStyle.list,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text(
                          "It's unlawful content under NetzDG",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: const FaIcon(
                          FontAwesomeIcons.angleRight,
                          color: Colors.grey,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        style: ListTileStyle.list,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text(
                          "It's spam",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: const FaIcon(
                          FontAwesomeIcons.angleRight,
                          color: Colors.grey,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        style: ListTileStyle.list,
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: const Text(
                          "Hate speech or symbols",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        trailing: const FaIcon(
                          FontAwesomeIcons.angleRight,
                          color: Colors.grey,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String truncateWithEllipsis(String text, int cutoff) {
    return text.length > cutoff ? '${text.substring(0, cutoff)}...' : text;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      clipBehavior: Clip.none,
      height: 250,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        faker.image.image(),
                        scale: 1.5,
                      ),
                    ),
                    Positioned(
                      bottom: -5,
                      right: -5,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.fromBorderSide(
                            BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        child: const Icon(
                          color: Colors.white,
                          Icons.add,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 120,
                  width: 3,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade300, // 경계선 색상
                        width: 100, // 경계선 두께
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Sizes.size8,
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          faker.image.image(),
                          scale: 0.5,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: -15,
                      child: SizedBox(
                        height: 30,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            faker.image.image(),
                            scale: 0.4,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -30,
                      child: SizedBox(
                        height: 25,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            faker.image.image(),
                            scale: 0.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size28,
                vertical: Sizes.size14,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        truncateWithEllipsis(
                          faker.person.name(),
                          15,
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: Sizes.size4,
                      ),
                      const Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 20,
                      ),
                      const Spacer(),
                      Text(
                        '${faker.randomGenerator.integer(10)}m',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: Sizes.size4,
                      ),
                      GestureDetector(
                        onTap: () {
                          onTapDot(context);
                        },
                        child: const Icon(
                          Icons.more_horiz,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    faker.lorem.sentence(),
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: Sizes.size8,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(
                          FontAwesomeIcons.heart,
                          color: isDarkMode(context, ref)
                              ? Colors.white
                              : Colors.black,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: Sizes.size8,
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(
                          FontAwesomeIcons.comment,
                          color: isDarkMode(context, ref)
                              ? Colors.white
                              : Colors.black,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: Sizes.size8,
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(
                          FontAwesomeIcons.recycle,
                          color: isDarkMode(context, ref)
                              ? Colors.white
                              : Colors.black,
                          size: 25,
                        ),
                      ),
                      const SizedBox(
                        width: Sizes.size8,
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Icon(
                          FontAwesomeIcons.paperPlane,
                          color: isDarkMode(context, ref)
                              ? Colors.white
                              : Colors.black,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: Sizes.size8,
                  ),
                  Row(
                    children: [
                      Text("${faker.randomGenerator.integer(100)} replies"),
                      const SizedBox(
                        width: Sizes.size8,
                      ),
                      const Text("-"),
                      const SizedBox(
                        width: Sizes.size8,
                      ),
                      Text("${faker.randomGenerator.integer(100)} likes"),
                      const SizedBox(
                        width: Sizes.size8,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
