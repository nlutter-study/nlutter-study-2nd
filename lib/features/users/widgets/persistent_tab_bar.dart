import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

class PersistentTabBar extends SliverPersistentHeaderDelegate {
  final Function onTabTapped;
  final int selectedTab;
  bool selected = false;

  PersistentTabBar({
    required this.selectedTab,
    required this.onTabTapped,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return TabBar(
      onTap: (index) {
        onTabTapped(index);
      },
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 2,
          color: Colors.black,
        ),
      ),
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      indicatorColor: Colors.black,
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
