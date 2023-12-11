import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

class PersistentTabBar extends SliverPersistentHeaderDelegate {
  final Function onTabTapped;
  final int _selectedTab;

  PersistentTabBar({
    required this.onTabTapped,
    required int selectedTab,
  }) : _selectedTab = selectedTab;

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
      tabs: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size16,
            vertical: Sizes.size16,
          ),
          child: Text(
            'Threads',
            style: TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
              color: _selectedTab == 0 ? Colors.black : Colors.grey,
            ),
          ),
        ),
        Text(
          'Replies',
          style: TextStyle(
            fontSize: Sizes.size16,
            fontWeight: FontWeight.w600,
            color: _selectedTab == 1 ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 1;

  @override
  // TODO: implement minExtent
  double get minExtent => 1;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    throw UnimplementedError();
  }
}
