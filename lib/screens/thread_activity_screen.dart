import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:challenge/data/thread_activity_data.dart';
import 'package:challenge/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThreadActivityScreen extends StatefulWidget {
  const ThreadActivityScreen({super.key});

  @override
  State<ThreadActivityScreen> createState() => _ThreadActivityScreenState();
}

class _ThreadActivityScreenState extends State<ThreadActivityScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _tabs = [
    "All",
    "Replies",
    "Mentions",
    "Users",
    "News",
    "Urgent",
  ];

  final List<ThreadActivityData> _activityData = List.generate(
    threadActivityData.length,
    (index) {
      final data = threadActivityData[index];
      return ThreadActivityData(
        nickname: data["nickname"],
        subtitle: data["subtitle"],
        content: data["content"],
      );
    },
  );
  final String fakeImageUrl = "https://picsum.photos/200/300";
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = isDarkMode(context);

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "Activity",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Sizes.size36,
              ),
            ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          isScrollable: true,
          splashFactory: NoSplash.splashFactory,
          labelColor: getBackgroundColorByMode(isDark),
          unselectedLabelColor: isDark ? Colors.white : Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size12,
          ),
          dividerColor: Colors.transparent,
          labelPadding: const EdgeInsets.symmetric(
            horizontal: Sizes.size4,
          ),
          onTap: (e) {
            setState(() {});
          },
          tabs: [
            for (var tab in _tabs)
              Container(
                width: Sizes.size96 * 1.1,
                height: Sizes.size40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: _tabController.index == _tabs.indexOf(tab)
                      ? getTextColorByMode(isDark)
                      : getBackgroundColorByMode(isDark),
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Text(
                  tab,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size20,
            ),
            children: [
              for (var data in _activityData)
                Dismissible(
                  key: Key(data.nickname),
                  background: Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.green,
                    child: const Padding(
                      padding: EdgeInsets.only(left: Sizes.size20),
                      child: FaIcon(
                        FontAwesomeIcons.check,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  secondaryBackground: Container(
                    alignment: Alignment.centerRight,
                    color: Colors.red,
                    child: const Padding(
                      padding: EdgeInsets.only(right: Sizes.size20),
                      child: FaIcon(
                        FontAwesomeIcons.trashCan,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      _activityData.remove(data);
                    });
                  },
                  child: ListTile(
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade200,
                      ),
                    ),
                    titleAlignment: ListTileTitleAlignment.titleHeight,
                    leading: CircleAvatar(
                      foregroundImage:
                          NetworkImage("$fakeImageUrl?hash=${data.nickname}"),
                      radius: Sizes.size20,
                    ),
                    title: Row(
                      children: [
                        Text(
                          data.nickname,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Sizes.size14,
                          ),
                        ),
                        Gaps.h4,
                        const Text(
                          "1h",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: Sizes.size14,
                          ),
                        ),
                      ],
                    ),
                    isThreeLine: true,
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.subtitle,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: Sizes.size14,
                          ),
                        ),
                        Text(
                          data.content,
                          style: const TextStyle(
                            fontSize: Sizes.size14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          for (var tab in _tabs.skip(1))
            Center(
              child: Text(
                tab,
              ),
            ),
        ],
      ),
    );
  }
}
