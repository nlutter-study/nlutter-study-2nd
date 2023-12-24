import 'package:challenge/utils/utils.dart';
import 'package:flutter/material.dart';

class ThreadProfileSliverPersistentHeader
    extends SliverPersistentHeaderDelegate {
  final List<String> tabs;

  ThreadProfileSliverPersistentHeader({
    required this.tabs,
  });
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final isDark = isDarkMode(context);
    return Container(
      color: getBackgroundColorByMode(isDark),
      child: TabBar(
        splashFactory: NoSplash.splashFactory,
        indicatorColor: Colors.black,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: getTextColorByMode(isDark),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        tabs: [
          for (var tab in tabs)
            Tab(
              text: tab,
            ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
