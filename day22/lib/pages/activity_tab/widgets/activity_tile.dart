import 'package:day22/pages/widgets/profile_with_add_icon.dart';
import 'package:flutter/material.dart';

import '../activity_type.dart';

class ActivityTile extends StatelessWidget {
  final String userName;
  final String imagePath;
  final String activityTime;
  final ActivityType activityType;
  final bool isFollowing;
  final String subtitle;
  final String message;

  const ActivityTile(
      {super.key,
      required this.userName,
      required this.imagePath,
      required this.activityTime,
      required this.activityType,
      required this.isFollowing,
      required this.message,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      isThreeLine: true,
      leading: ProfileWithIcon(
          profileImagePath: imagePath,
          size: 50,
          iconData: activityType.icon,
          iconBackgroundColor: activityType.color),
      title: Row(
        children: [
          Text(
            userName,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            activityTime,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subtitle,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          if (message.isNotEmpty)
            Text(
              message,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
        ],
      ),
      trailing: isFollowing
          ? Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Center(
                child: Text(
                  isFollowing ? 'Following' : 'Follow',
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          : null,
    );
  }
}
