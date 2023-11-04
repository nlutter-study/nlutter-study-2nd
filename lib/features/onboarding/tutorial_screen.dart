import 'package:flutter/material.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

class TutorialScreen extends StatefulWidget {
  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: const SafeArea(
          child: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.size24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gaps.v52,
                    Text(
                      "쿨한 영상을 시청하고\n좋아요를 눌러보세요.",
                      style: TextStyle(
                        fontSize: Sizes.size40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gaps.v16,
                    Text(
                      "영상은 당신의 관심사를 기반으로 추천됩니다.",
                      style: TextStyle(
                        fontSize: Sizes.size20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.size24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gaps.v52,
                    Text(
                      "규칙을 지켜보세요.",
                      style: TextStyle(
                        fontSize: Sizes.size40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gaps.v16,
                    Text(
                      "당신의 안전을 위해 영상에는 규칙이 있습니다.",
                      style: TextStyle(
                        fontSize: Sizes.size20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.size24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gaps.v52,
                    Text(
                      "즐기고 공유해보세요.",
                      style: TextStyle(
                        fontSize: Sizes.size40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Gaps.v16,
                    Text(
                      "다양한 콘텐츠를 즐기고 공유해보세요.",
                      style: TextStyle(
                        fontSize: Sizes.size20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: Sizes.size48,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabPageSelector(
                  color: Colors.white,
                  selectedColor: Colors.black38,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
