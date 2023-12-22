import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/activity/activity_screen.dart';
import 'package:tiktok/features/main_navigation/widgets/nav_tab.dart';
import 'package:tiktok/features/posts/posts_screen.dart';
import 'package:tiktok/features/posts/post_write_screen.dart';
import 'package:tiktok/features/search/search_screen.dart';
import 'package:tiktok/features/users/user_profile_screen.dart';
import 'package:tiktok/utils.dart';

class MainNavigation2 extends ConsumerStatefulWidget {
  static const String routeName = 'mainNavigation';

  final String tab;

  const MainNavigation2({
    super.key,
    required this.tab,
  });

  @override
  MainNavigation2State createState() => MainNavigation2State();
}

class MainNavigation2State extends ConsumerState<MainNavigation2> {
  final List<String> _tabs = [
    '',
    'search',
    'activity',
    'profile',
  ];

  late int _selectedIndex = _tabs.indexOf(widget.tab);

  void _onTap(int index) {
    context.go(
      "/${_tabs[index]}",
    );
    _selectedIndex = index;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: _selectedIndex == 0 ? Colors.black : Colors.white,
      body: Stack(
        children: [
          Offstage(
            offstage: _selectedIndex != 0,
            child: const PostsScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 1,
            child: const SearchScreen(),
          ),
          Offstage(
            offstage: _selectedIndex != 3,
            child: const UserProfileScreen(
              username: 'Jane',
            ),
          ),
          Offstage(
            offstage: _selectedIndex != 2,
            child: const ActivityScreen(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: isDarkMode(context, ref) ? Colors.black : Colors.white,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(
            Sizes.size16,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                isSelected: _selectedIndex == 0,
                icon: FontAwesomeIcons.house,
                selectedIcon: FontAwesomeIcons.house,
                onTap: () => _onTap(0),
                selectedIndex: _selectedIndex,
              ),
              NavTab(
                isSelected: _selectedIndex == 1,
                icon: FontAwesomeIcons.magnifyingGlass,
                selectedIcon: FontAwesomeIcons.magnifyingGlassArrowRight,
                onTap: () => _onTap(1),
                selectedIndex: _selectedIndex,
              ),
              NavTab(
                isSelected: _selectedIndex == 5,
                icon: FontAwesomeIcons.penToSquare,
                selectedIcon: FontAwesomeIcons.solidPenToSquare,
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => const PostWrite(),
                  );
                },
                selectedIndex: _selectedIndex,
              ),
              NavTab(
                isSelected: _selectedIndex == 2,
                icon: FontAwesomeIcons.heart,
                selectedIcon: FontAwesomeIcons.solidHeart,
                onTap: () => _onTap(2),
                selectedIndex: _selectedIndex,
              ),
              NavTab(
                isSelected: _selectedIndex == 3,
                icon: FontAwesomeIcons.user,
                selectedIcon: FontAwesomeIcons.solidUser,
                onTap: () => _onTap(3),
                selectedIndex: _selectedIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
