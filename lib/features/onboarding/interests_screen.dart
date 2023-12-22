import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/onboarding/interests2_screen.dart';
import 'package:tiktok/features/onboarding/widgets/interest_button.dart';

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

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  final ScrollController _scrollController = ScrollController();

  bool _showTitle = false;

  num selectedCount = 0;

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

  void onPressInterest() {
    setState(() {
      selectedCount++;
    });
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
        child: SingleChildScrollView(
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
                  "Select at least 3 interests to personalize your Twitter experience. They will be visible on your profile.",
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
              Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  for (var interest in interests)
                    InterestButton(
                      interest: interest,
                      onPressInterest: onPressInterest,
                    ),
                ],
              ),
            ],
          ),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (selectedCount != 3)
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size20,
                  ),
                  child: Text(
                    "$selectedCount of 3 selected",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: Sizes.size16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              if (selectedCount == 3)
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size20,
                  ),
                  child: Text(
                    "Great work 👍",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: Sizes.size16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              GestureDetector(
                onTap: _onNextTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: Sizes.size12,
                  ),
                  decoration: BoxDecoration(
                    color: selectedCount == 3
                        ? Colors.black
                        : Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(
                      Sizes.size32,
                    ),
                  ),
                  width: 100,
                  child: const Text(
                    "Next",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizes.size24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
