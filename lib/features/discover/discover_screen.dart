import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

final tabs = [
  "Top",
  "Users",
  "Videos",
  "Sounds",
  "LIVE",
  "Shopping",
  "Brands",
];

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: const Text('Discover'),
          bottom: TabBar(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size16,
            ),
            splashFactory: NoSplash.splashFactory,
            isScrollable: true,
            labelStyle: const TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey.shade500,
            labelColor: Colors.black,
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
        body: TabBarView(children: [
          GridView.builder(
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
                  AspectRatio(
                    aspectRatio: 9 / 16,
                    child: FadeInImage.assetNetwork(
                        fit: BoxFit.cover,
                        placeholder: "assets/images/moi.jpeg",
                        image:
                            "https://img.hani.co.kr/imgdb/resize/2018/0620/152936920972_20180620.JPG"),
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
      ),
    );
  }
}
