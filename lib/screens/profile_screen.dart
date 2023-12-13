import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_clone/screens/settings_screen.dart';
import 'package:threads_clone/screens/widgets/post.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                toolbarHeight: 36,
                elevation: 0,
                backgroundColor: Colors.white,
                pinned: true,
                leading: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: FaIcon(
                    FontAwesomeIcons.circleDot,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SettingsScreen(),
                        ),
                      );
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.gripLines,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Jane",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Text(
                                "jane_mobbin",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(9999),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    "threads.net",
                                    style: TextStyle(
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const Text(
                            "Plant enthusiast!",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                fit: StackFit.loose,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9999),
                                    ),
                                    child: const CircleAvatar(
                                      radius: 10,
                                      backgroundImage: NetworkImage(
                                        "https://source.unsplash.com/random/100x101",
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    child: Container(
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(9999),
                                      ),
                                      child: const CircleAvatar(
                                        radius: 10,
                                        backgroundImage: NetworkImage(
                                          "https://source.unsplash.com/random/101x101",
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Text(
                                "2 followers",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 36,
                        backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/100x100"),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "Edit profile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Text(
                            "Share profile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverPersistentHeader(
                delegate: PersistentTabBarDelegate(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                children: const [
                  Post(
                    showFooter: false,
                  ),
                  Post(
                    showFooter: false,
                  ),
                  Post(
                    showFooter: false,
                  ),
                  Post(
                    showFooter: false,
                  ),
                ],
              ),
              ListView(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                children: const [
                  Post(
                    showFooter: false,
                    showReply: true,
                  ),
                  Post(
                    showFooter: false,
                    showReply: true,
                  ),
                  Post(
                    showFooter: false,
                    showReply: true,
                  ),
                  Post(
                    showFooter: false,
                    showReply: true,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class PersistentTabBarDelegate extends SliverPersistentHeaderDelegate {
  const PersistentTabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: const TabBar(
        splashFactory: NoSplash.splashFactory,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        labelColor: Colors.black,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.black,
        tabs: [
          Tab(
            text: "Threads",
          ),
          Tab(
            text: "Replies",
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
