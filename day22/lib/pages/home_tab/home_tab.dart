import 'package:day22/pages/home_tab/widgets/half_rounded_button.dart';
import 'package:day22/pages/home_tab/widgets/index.dart';
import 'package:day22/pages/home_tab/widgets/thread_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/divider_between_rounded_button.dart';
import 'widgets/modal_bottom_sheet_top_decoration.dart';
import 'widgets/next_page_button.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _title(),
              ThreadCard(
                profileImagePath: 'assets/images/profile_image_1.jpg',
                name: 'Taro Yamada',
                isAuthorized: true,
                timeOfCreation: '2m',
                bodyText:
                    'Hello, World! hahadkdgjasldkfjaslkdfjaklsdfjalksdjflkasjdflasjdfklasdf asdlfkjasdlkfjalskdjf',
                bodyImagePaths: const [
                  'assets/images/body_image_1.png',
                  'assets/images/body_image_2.png',
                  'assets/images/body_image_3.png',
                ],
                commentersProfileImagePaths: const [
                  'assets/images/profile_image_2.jpg',
                  'assets/images/profile_image_3.jpg',
                  'assets/images/profile_image_4.jpg',
                ],
                commentCount: 3,
                likeCount: 5,
                onSettingPressed: () => _showSettingBottomCard(context),
              ),
              ThreadCard(
                profileImagePath: 'assets/images/profile_image_1.jpg',
                name: 'Taro Test',
                isAuthorized: true,
                timeOfCreation: '2m',
                bodyText: 'Hello, salkfjasdfWorld!',
                bodyImagePaths: const [],
                commentersProfileImagePaths: const [
                  'assets/images/profile_image_1.jpg',
                  'assets/images/profile_image_2.jpg',
                  'assets/images/profile_image_3.jpg',
                ],
                commentCount: 3,
                likeCount: 5,
                onSettingPressed: _onSettingPressed,
              ),
              ThreadCard(
                profileImagePath: 'assets/images/profile_image_1.jpg',
                name: 'Taro Yamada',
                isAuthorized: true,
                timeOfCreation: '2m',
                bodyText:
                    'Hello, Woraslkdfjasdlkfjaskldfjalksdjfalksdjfklasdjflaksdjfklasdjfaskldjfald!',
                bodyImagePaths: const [],
                commentersProfileImagePaths: const [
                  'assets/images/profile_image_2.jpg',
                  'assets/images/profile_image_3.jpg',
                ],
                commentCount: 2,
                likeCount: 5,
                onSettingPressed: _onSettingPressed,
              ),
              ThreadCard(
                profileImagePath: 'assets/images/profile_image_1.jpg',
                name: 'Taro Yamada',
                isAuthorized: true,
                timeOfCreation: '2m',
                bodyText: 'Hello, World!',
                bodyImagePaths: const [],
                commentersProfileImagePaths: const [],
                commentCount: 0,
                likeCount: 5,
                onSettingPressed: _onSettingPressed,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _title() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: FaIcon(
        FontAwesomeIcons.threads,
        size: 60,
      ),
    );
  }

  _onSettingPressed() {
    print('onSettingPressed');
  }

  void _showSettingBottomCard(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ModalBottomSheetTopDecoration(),
              HalfRoundedButton(
                direction: HalfRoundedButtonDirection.upper,
                label: 'Unfollow',
                onPressed: () {},
              ),
              const DividerBetweenRoundedButton(),
              HalfRoundedButton(
                direction: HalfRoundedButtonDirection.lower,
                label: 'Mute',
                onPressed: () {},
              ),
              const SizedBox(height: 30),
              HalfRoundedButton(
                direction: HalfRoundedButtonDirection.upper,
                label: 'Hide',
                onPressed: () {},
              ),
              const DividerBetweenRoundedButton(),
              HalfRoundedButton(
                direction: HalfRoundedButtonDirection.lower,
                label: 'Report',
                labelColor: Colors.red,
                onPressed: () => _onReportPressed(context),
              ),
              const SizedBox(height: 50),
            ],
          ),
        );
      },
      shape: _getShapeOfModalBottomSheet(),
    );
  }

  _onReportPressed(BuildContext context) {
    Navigator.pop(context);
    _showReportBottomCard(context);
  }

  void _showReportBottomCard(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: ModalBottomSheetTopDecoration()),
              const Center(
                child: Text(
                  'Report',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(height: 15),
              const DividerBetweenRoundedButton(),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  'Why are you reporting this thread?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Your report is anonymoous, except if you're reporting an intellectual property infringment. If someone is in immediate danger, call the local emergency services - dont' wait.",
                  style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                ),
              ),
              const SizedBox(height: 20),
              NextPageButton(
                label: "I just don't like it",
                onPressed: () {},
              ),
              NextPageButton(
                label: "It's unlawful content under NetzDG",
                onPressed: () {},
              ),
              NextPageButton(
                label: "It's spam",
                onPressed: () {},
              ),
              NextPageButton(
                label: "Hate speech or symbols",
                onPressed: () {},
              ),
              NextPageButton(
                label: "Nudity or sexual activity",
                onPressed: () {},
              ),
              NextPageButton(
                label: "What it is",
                onPressed: () {},
              ),
            ],
          ),
        );
      },
      shape: _getShapeOfModalBottomSheet(),
    );
  }

  _getShapeOfModalBottomSheet() {
    return const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    );
  }
}
