import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/utils.dart';

class PersistentTabBar extends SliverPersistentHeaderDelegate {
  final Function onTabTapped;
  final int selectedTab;
  late WidgetRef ref;
  bool selected = false;

  PersistentTabBar({
    required this.selectedTab,
    required this.onTabTapped,
    required this.ref,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: isDarkMode(context, ref) ? Colors.black : Colors.white,
        border: Border(
          bottom: BorderSide(
            color: isDarkMode(context, ref)
                ? Colors.grey.shade300
                : Colors.grey.shade300,
            width: 1,
          ),
        ),
      ),
      child: TabBar(
        onTap: (index) {
          onTabTapped(index);
        },
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 2,
            color: isDarkMode(context, ref) ? Colors.white : Colors.black,
          ),
        ),
        labelColor: !isDarkMode(context, ref) ? Colors.black : Colors.white,
        unselectedLabelColor:
            !isDarkMode(context, ref) ? Colors.grey.shade500 : Colors.white,
        indicatorColor: !isDarkMode(context, ref) ? Colors.black : Colors.white,
        labelStyle: const TextStyle(
          fontSize: Sizes.size16,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: Sizes.size16,
          fontWeight: FontWeight.w600,
        ),
        tabs: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.size16,
              vertical: Sizes.size16,
            ),
            child: Text(
              'Threads',
              style: TextStyle(
                fontSize: Sizes.size16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            'Replies',
            style: TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
