import 'package:flutter/material.dart';

import '../activity_type.dart';
import 'activity_tile.dart';

const List<Map<String, dynamic>> _activityData = [
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": false,
    "subtitle": 'Follows you',
    "message": 'asdfklajsldfjasdklfj\nafasfadf\nasdfgasdfasdf'
  },
  {
    "userName": 'google',
    "imagePath": 'assets/images/profile_image_2.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.defaultType,
    "isFollowing": true,
    "subtitle": 'als;dkfal;wekrkqwefads',
    "message": ''
  },
  {
    "userName": 'zuri',
    "imagePath": 'assets/images/profile_image_3.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.mentionType,
    "isFollowing": true,
    "subtitle": 'vcxzcvxcv',
    "message": ''
  },
  {
    "userName": 'qwert',
    "imagePath": 'assets/images/profile_image_4.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.replyType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'poiuy',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.verifyType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'nbvcx',
    "imagePath": 'assets/images/profile_image_2.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'rwrwr',
    "imagePath": 'assets/images/profile_image_3.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_4.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
  {
    "userName": 'Flutter',
    "imagePath": 'assets/images/profile_image_1.jpg',
    "activityTime": '2h',
    "activityType": ActivityType.followType,
    "isFollowing": true,
    "subtitle": 'Follows you',
    "message": ''
  },
];

class ActivityList extends StatelessWidget {
  const ActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _activityData.length,
      itemBuilder: (context, index) {
        return ActivityTile(
          userName: _activityData[index]['userName'],
          imagePath: _activityData[index]['imagePath'],
          activityTime: _activityData[index]['activityTime'],
          activityType: _activityData[index]['activityType'],
          isFollowing: _activityData[index]['isFollowing'],
          subtitle: _activityData[index]['subtitle'],
          message: _activityData[index]['message'],
        );
      },
      separatorBuilder: (context, index) {
        return const Divider(
          height: 0,
          thickness: 0.5,
          color: Colors.grey,
        );
      },
    );
  }
}
