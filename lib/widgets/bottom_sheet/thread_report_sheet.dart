import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';

class ThreadReportSheet extends StatelessWidget {
  ThreadReportSheet({super.key});
  final List<String> tileTexts = [
    "I just don't like it",
    "It's unlawful content under NetzDG",
    "It's spam",
    "Hate speech or symbols",
    "Nudity or sexual activity",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Report",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size20,
              vertical: Sizes.size12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Why are you reporting this thread?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Gaps.v6,
                Text(
                  "Your report is anonymous, except if you're reporting an intellectual property infringement. If someone is in immediate danger, call the local emergency services - don't wait.",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
                Gaps.v20,
              ],
            ),
          ),
          SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  for (var text in tileTexts) _listTile(text),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile _listTile(String text) {
    return ListTile(
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const FaIcon(
        FontAwesomeIcons.chevronRight,
        color: Colors.black45,
        size: Sizes.size16,
      ),
      shape: Border.symmetric(
        horizontal: BorderSide(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}
