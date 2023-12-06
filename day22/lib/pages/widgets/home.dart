import 'package:day22/pages/widgets/half_rounded_button.dart';
import 'package:day22/pages/widgets/index.dart';
import 'package:day22/pages/widgets/thread_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
              onSettingPressed: () => _showBottomCard(context),
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

  void _showBottomCard(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _roundedDivider(),
            HalfRoundedButton(
              direction: HalfRoundedButtonDirection.upper,
              label: 'Unfollow',
              onPressed: () {},
            ),
            _dividerBetweenButtons(),
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
            _dividerBetweenButtons(),
            HalfRoundedButton(
              direction: HalfRoundedButtonDirection.lower,
              label: 'Report',
              labelColor: Colors.red,
              onPressed: () {},
            ),
            const SizedBox(height: 50),
          ],
        );
      },
      shape: _getShapeOfModalBottomSheet(),
    );
  }

  _roundedDivider() {
    return Container(
      margin: const EdgeInsets.only(top: 15, bottom: 10),
      height: 6,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  _dividerBetweenButtons() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 1,
      width: double.infinity,
      color: Colors.grey.shade300,
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
