import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

final tabs = [
  "All",
  "Replies",
  "Mentions",
  "Views",
  "Likes",
];

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => ActivityScreenState();
}

class ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  final TabController _tabController = TabController(
    length: tabs.length,
    vsync: ActivityScreenState(),
  );

  final int _selectedIndex = 0;

  void _onSearchChanged(String value) {
    print(value);
  }

  void _onSearchSubmitted(String value) {
    print(value);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 10,
              left: 20,
              child: Text(
                "Activity",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: Sizes.size32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.black,
          unselectedLabelStyle: const TextStyle(
            fontSize: Sizes.size16,
            fontWeight: FontWeight.w600,
            backgroundColor: Colors.white,
          ),
          labelColor: Colors.white,
          labelStyle: const TextStyle(
            fontSize: Sizes.size16,
            fontWeight: FontWeight.w600,
            backgroundColor: Colors.black,
          ),
          isScrollable: true,
          indicatorColor: Colors.white,
          tabs: [
            for (var tab in tabs)
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    Sizes.size10,
                  ),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Tab(
                  text: tab,
                ),
              ),
          ],
        ),
      ),
      body: TabBarView(children: [
        GridView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size6,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: Sizes.size10,
            mainAxisSpacing: Sizes.size10,
            childAspectRatio: 9 / 20,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.size10),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: FadeInImage.assetNetwork(
                        fit: BoxFit.cover,
                        placeholder: "assets/images/moi.jpeg",
                        image:
                            "https://img.hani.co.kr/imgdb/resize/2018/0620/152936920972_20180620.JPG"),
                  ),
                ),
                Gaps.v10,
                const Text(
                  "미라이노 타메니 유메가 히토츠 카나우타비 보쿠와 키미다케오 모토메테이루",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gaps.v5,
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: Sizes.size14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade500,
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundImage: NetworkImage(
                            "https://avatars.githubusercontent.com/u/48057918?v=4"),
                      ),
                      Gaps.v4,
                      Expanded(
                        child: Text(
                          "원장",
                        ),
                      ),
                      Gaps.h4,
                      FaIcon(
                        FontAwesomeIcons.heart,
                        size: Sizes.size14,
                      ),
                      Gaps.h2,
                      Text(
                        "1.2M",
                      ),
                    ],
                  ),
                )
              ],
            );
          },
        ),
        for (var tab in tabs.skip(1))
          Center(
            child: Text(tab),
          ),
      ]),
    );
  }
}
