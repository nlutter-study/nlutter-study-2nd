import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/onboarding/widgets/interest2_button.dart';

const interests = [
  "Fashion & beauty",
  "Outdoors",
  "Arts & culture",
  "Animation & comics",
  "Business & finance",
  "Food",
  "Travel",
  "Entertainment",
  "Music",
  "Gaming",
  "ETC1",
  "ETC2",
];

const muiscs = [
  "Rap",
  "R&B & Soul",
  "Grammy Awards",
  "Pop",
  "K-pop",
  "Music industry",
  "EDM",
  "Music news",
  "Hip hop",
  "Reggae",
  "electronic",
  "country",
];

const entertainments = [
  "Anime",
  "Movies & Tv",
  "Harry Potter",
  "Marvel Universe",
  "Movie news",
  "Naruto",
  "Movies",
  "Grammy Awards",
  "Entertainment",
  "Black Panther",
  "Star Wars",
  "Game of Thrones",
];

class Interests2Screen extends StatefulWidget {
  const Interests2Screen({super.key});

  @override
  State<Interests2Screen> createState() => _Interests2ScreenState();
}

class _Interests2ScreenState extends State<Interests2Screen> {
  final ScrollController _scrollController = ScrollController();

  bool _showTitle = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset > 100) {
      if (_showTitle) return;
      if (!_showTitle) {
        setState(() {
          _showTitle = true;
        });
      }
    } else {
      if (_showTitle) {
        setState(() {
          _showTitle = false;
        });
      }
    }
  }

  void _onNextTap() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Interests2Screen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FaIcon(
          FontAwesomeIcons.twitter,
          size: Sizes.size40,
          color: Colors.blue,
        ),
      ),
      body: Scrollbar(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gaps.v32,
            const Padding(
              padding: EdgeInsets.only(
                left: Sizes.size20,
                right: Sizes.size20,
                bottom: Sizes.size16,
              ),
              child: Text(
                "What do you want to see on Twitter?",
                style: TextStyle(
                  fontSize: Sizes.size28 + Sizes.size2,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Gaps.v20,
            const Padding(
              padding: EdgeInsets.only(
                left: Sizes.size20,
                right: Sizes.size20,
                bottom: Sizes.size16,
              ),
              child: Text(
                "Interests are used to personalize your experience and will be visible on your profile.",
                style: TextStyle(
                  fontSize: Sizes.size16 + Sizes.size2,
                ),
              ),
            ),
            Gaps.v20,
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
            ),
            Gaps.v64,
            const Padding(
              padding: EdgeInsets.only(
                left: Sizes.size20,
                right: Sizes.size20,
                bottom: Sizes.size16,
              ),
              child: Text(
                "Music",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: Sizes.size20,
                right: Sizes.size20,
              ),
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  runSpacing: 4,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: List.generate(
                    12,
                    (index) {
                      return Interes2tButton(
                        interest: muiscs[index],
                      );
                    },
                  ),
                ),
              ),
            ),
            Gaps.v96,
            const Padding(
              padding: EdgeInsets.only(
                left: Sizes.size20,
                right: Sizes.size20,
                bottom: Sizes.size16,
              ),
              child: Text(
                "Entertainment",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: Sizes.size20,
                right: Sizes.size20,
              ),
              child: SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  runSpacing: 4,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: List.generate(
                    12,
                    (index) {
                      return Interes2tButton(
                        interest: entertainments[index],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: Sizes.size40,
            top: Sizes.size16,
            left: Sizes.size24,
            right: Sizes.size24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: _onNextTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size12,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      Sizes.size32,
                    ),
                  ),
                  width: 100,
                  child: const Text("Next",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Sizes.size24,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
