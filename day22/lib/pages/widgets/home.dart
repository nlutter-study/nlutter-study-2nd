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
            const ThreadCard(
              profileImagePath: 'assets/images/profile_image_1.jpg',
              name: 'Taro Yamada',
              isAuthorized: true,
              timeOfCreation: '2m',
              bodyText:
                  'Hello, World! hahadkdgjasldkfjaslkdfjaklsdfjalksdjflkasjdflasjdfklasdf asdlfkjasdlkfjalskdjf',
              bodyImagePaths: [
                'assets/images/body_image_1.png',
                'assets/images/body_image_2.png',
                'assets/images/body_image_3.png',
              ],
              commentersProfileImagePaths: [
                'assets/images/profile_image_2.jpg',
                'assets/images/profile_image_3.jpg',
                'assets/images/profile_image_4.jpg',
              ],
              commentCount: 3,
              likeCount: 5,
            ),
            const ThreadCard(
              profileImagePath: 'assets/images/profile_image_1.jpg',
              name: 'Taro Test',
              isAuthorized: true,
              timeOfCreation: '2m',
              bodyText: 'Hello, salkfjasdfWorld!',
              bodyImagePaths: [],
              commentersProfileImagePaths: [
                'assets/images/profile_image_1.jpg',
                'assets/images/profile_image_2.jpg',
                'assets/images/profile_image_3.jpg',
              ],
              commentCount: 3,
              likeCount: 5,
            ),
            const ThreadCard(
              profileImagePath: 'assets/images/profile_image_1.jpg',
              name: 'Taro Yamada',
              isAuthorized: true,
              timeOfCreation: '2m',
              bodyText:
                  'Hello, Woraslkdfjasdlkfjaskldfjalksdjfalksdjfklasdjflaksdjfklasdjfaskldjfald!',
              bodyImagePaths: [],
              commentersProfileImagePaths: [
                'assets/images/profile_image_2.jpg',
                'assets/images/profile_image_3.jpg',
              ],
              commentCount: 2,
              likeCount: 5,
            ),
            const ThreadCard(
              profileImagePath: 'assets/images/profile_image_1.jpg',
              name: 'Taro Yamada',
              isAuthorized: true,
              timeOfCreation: '2m',
              bodyText: 'Hello, World!',
              bodyImagePaths: [],
              commentersProfileImagePaths: [],
              commentCount: 0,
              likeCount: 5,
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
}
