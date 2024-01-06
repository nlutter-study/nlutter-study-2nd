import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:challenge/data/thread_search_data.dart';
import 'package:challenge/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThreadSearchScreen extends StatefulWidget {
  const ThreadSearchScreen({super.key});

  @override
  State<ThreadSearchScreen> createState() => _ThreadSearchScreenState();
}

class _ThreadSearchScreenState extends State<ThreadSearchScreen> {
  final List<ThreadSearchData> _searchData = List.generate(
    threadSearchData.length,
    (index) {
      final data = threadSearchData[index];
      return ThreadSearchData(
        nickname: data["nickname"],
        subtitle: data["subtitle"],
        followers: data["followers"],
      );
    },
  );

  final String fakeImageUrl = "https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: _appBar(),
        body: Padding(
          padding: const EdgeInsets.only(
            top: Sizes.size20,
          ),
          child: ListView.separated(
            itemCount: _searchData.length,
            separatorBuilder: (context, index) => Divider(
              height: 0,
              color: isDark ? Colors.grey.shade900 : Colors.grey.shade200,
            ),
            itemBuilder: (context, index) {
              final data = _searchData[index];
              return ListTile(
                leading: CircleAvatar(
                  foregroundImage: NetworkImage("$fakeImageUrl?hash=$index"),
                ),
                isThreeLine: true,
                title: Row(
                  children: [
                    Text(
                      data.nickname,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: Sizes.size14,
                      ),
                    ),
                    Gaps.h6,
                    const FaIcon(
                      FontAwesomeIcons.certificate,
                      color: Colors.blueAccent,
                      size: Sizes.size12,
                    ),
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.subtitle,
                      style: const TextStyle(
                        fontSize: Sizes.size14,
                        color: Colors.grey,
                      ),
                    ),
                    Gaps.v8,
                    Text(
                      "${data.followers} followers",
                      style: const TextStyle(
                        fontSize: Sizes.size14,
                      ),
                    ),
                  ],
                ),
                trailing: Container(
                  height: Sizes.size28,
                  width: Sizes.size80,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  child: const Text(
                    "Follow",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Row(
        children: [
          Text(
            "Search",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Sizes.size28,
            ),
          ),
        ],
      ),
      bottom: _appBarBottom(),
    );
  }

  PreferredSize _appBarBottom() {
    final isDark = isDarkMode(context);
    return PreferredSize(
      preferredSize: const Size.fromHeight(
        Sizes.size36,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size16,
        ),
        child: CupertinoSearchTextField(
          style: TextStyle(
            color: getTextColorByMode(isDark),
          ),
        ),
      ),
    );
  }
}
