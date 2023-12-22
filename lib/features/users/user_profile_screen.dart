import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/users/widgets/persistent_tab_bar.dart';
import 'package:tiktok/features/users/widgets/user_post_only_text.dart';
import 'package:tiktok/features/users/widgets/user_post_with_image.dart';
import 'package:tiktok/utils.dart';

class UserProfileScreen extends ConsumerStatefulWidget {
  const UserProfileScreen({
    super.key,
    required this.username,
  });

  final String username;

  @override
  UserProfileScreenState createState() => UserProfileScreenState();
}

class UserProfileScreenState extends ConsumerState<UserProfileScreen> {
  final faker = Faker();
  int selectedTab = 0;

  void _onTabTapped(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  void _onGearPressed() {
    context.push("/settings");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  leading: IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.globe,
                      color: isDarkMode(context, ref)
                          ? Colors.white.withOpacity(0.8)
                          : Colors.black.withOpacity(0.8),
                    ),
                    onPressed: null,
                  ),
                  actions: [
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.instagram,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.gripLines,
                      ),
                      onPressed: () {
                        _onGearPressed();
                      },
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Sizes.size16,
                              vertical: Sizes.size16,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Jane',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: Sizes.size24,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: Sizes.size10,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'jane_mobbin',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: Sizes.size20,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: Sizes.size6,
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: Sizes.size12,
                                                vertical: Sizes.size8,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Text(
                                                "threads.net",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: Sizes.size12,
                                                  color: Colors.grey[500],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: Sizes.size72,
                                    ),
                                    CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(
                                        faker.image.image(),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: Sizes.size10,
                                ),
                                const Text(
                                  'Plant enthusiast!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: Sizes.size20,
                                  ),
                                ),
                                const SizedBox(
                                  height: Sizes.size20,
                                ),
                                Row(
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Positioned(
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                              faker.image.image(
                                                random: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 20,
                                          child: CircleAvatar(
                                            radius: 20,
                                            backgroundImage: NetworkImage(
                                              faker.image.image(
                                                random: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: Sizes.size32,
                                    ),
                                    const Text(
                                      '2 followers',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: Sizes.size20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: Sizes.size20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.size16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AnimatedContainer(
                              width: 190,
                              duration: const Duration(
                                milliseconds: 300,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: Sizes.size16,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  Sizes.size12,
                                ),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: const AnimatedDefaultTextStyle(
                                duration: Duration(
                                  milliseconds: 300,
                                ),
                                style: TextStyle(
                                  fontSize: Sizes.size16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                child: Text(
                                  "Edit Profile",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            AnimatedContainer(
                              width: 190,
                              duration: const Duration(
                                milliseconds: 300,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: Sizes.size16,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  Sizes.size12,
                                ),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              child: const AnimatedDefaultTextStyle(
                                duration: Duration(
                                  milliseconds: 300,
                                ),
                                style: TextStyle(
                                  fontSize: Sizes.size16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                child: Text(
                                  "Share profile",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: Sizes.size20,
                      ),
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: PersistentTabBar(
                    onTabTapped: _onTabTapped,
                    selectedTab: selectedTab,
                    ref: ref,
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index % 2 == 0) {
                            return UserPostOnlyText(faker: faker);
                          }
                          return UserPostWithImage(faker: faker);
                        },
                      ),
                    ),
                  ],
                ),
                CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index % 2 == 0) {
                            return UserPostOnlyText(faker: faker);
                          }
                          return UserPostWithImage(faker: faker);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
