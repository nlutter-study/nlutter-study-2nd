import 'package:challenge/constants/sizes.dart';
import 'package:challenge/navs/widgets/thread_nav_tab.dart';
import 'package:challenge/router.dart';
import 'package:challenge/widgets/bottom_sheet/thread_new_post_botton_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const threadLogoUrl =
    "https://seeklogo.com/images/T/threads-logo-E9BA734BF6-seeklogo.com.png?v=638252100960000000";

class ThreadMainNav extends StatefulWidget {
  final MainNavTab currentTab;
  const ThreadMainNav({
    super.key,
    this.currentTab = MainNavTab.home,
  });

  @override
  State<ThreadMainNav> createState() => _MainNavState();
}

class _MainNavState extends State<ThreadMainNav> {
  void _onPost() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      builder: (context) => const ThreadNewPostBottomSheet(),
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }

  void _onTap(MainNavTab selectedTab) {
    context.go("/${selectedTab.name}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.currentTab.index,
        children: MainNavTab.values
            .map((tab) => tab.screen ?? Container())
            .toList(), // Post tab doesn't have screen
      ),
      bottomNavigationBar: _bottomAppBar(),
    );
  }

  BottomAppBar _bottomAppBar() {
    return BottomAppBar(
      height: Sizes.size52,
      padding: const EdgeInsets.only(
        top: Sizes.size14,
        right: Sizes.size6,
        left: Sizes.size6,
      ),
      elevation: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: MainNavTab.values.map(_buildThreadNavTab).toList(),
      ),
    );
  }

  ThreadNavTab _buildThreadNavTab(MainNavTab tab) => ThreadNavTab(
        isSelected: widget.currentTab == tab,
        icon: tab.icon,
        label: tab.name,
        onTap: tab == MainNavTab.post
            ? _onPost
            : () => _onTap(
                  tab,
                ),
      );
}
