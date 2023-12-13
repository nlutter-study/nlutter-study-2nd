import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_clone/screens/home_screen.dart';
import 'package:threads_clone/screens/activity_screen.dart';
import 'package:threads_clone/screens/post_screen.dart';
import 'package:threads_clone/screens/profile_screen.dart';
import 'package:threads_clone/screens/search_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    Placeholder(),
    ActivityScreen(),
    ProfileScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onTapPost() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      builder: (context) {
        return const PostScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          for (final screen in _screens)
            Offstage(
              offstage: _screens.indexOf(screen) != _selectedIndex,
              child: screen,
            ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavTab(
                icon: FontAwesomeIcons.house,
                onTap: () => _onTap(0),
                isSelected: _selectedIndex == 0,
              ),
              NavTab(
                icon: FontAwesomeIcons.magnifyingGlass,
                onTap: () => _onTap(1),
                isSelected: _selectedIndex == 1,
              ),
              NavTab(
                icon: FontAwesomeIcons.squarePlus,
                onTap: _onTapPost,
                isSelected: _selectedIndex == 2,
              ),
              NavTab(
                icon: FontAwesomeIcons.heart,
                onTap: () => _onTap(3),
                isSelected: _selectedIndex == 3,
              ),
              NavTab(
                icon: FontAwesomeIcons.user,
                onTap: () => _onTap(4),
                isSelected: _selectedIndex == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavTab extends StatefulWidget {
  final IconData icon;
  final Function() onTap;
  final bool isSelected;

  const NavTab(
      {super.key,
      required this.icon,
      required this.onTap,
      required this.isSelected});

  @override
  State<NavTab> createState() => _NavTabState();
}

class _NavTabState extends State<NavTab> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: widget.onTap,
      child: FaIcon(
        widget.icon,
        color: widget.isSelected ? Colors.black : Colors.grey,
      ),
    );
  }
}
