import 'package:flutter/material.dart';

class ProfileTileWithFollow extends StatelessWidget {
  final String name;
  final String userName;
  final String imagePath;
  final int followers;
  final bool isFollowing;

  const ProfileTileWithFollow(
      {super.key,
      required this.name,
      required this.userName,
      required this.imagePath,
      required this.followers,
      required this.isFollowing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
      isThreeLine: true,
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imagePath),
      ),
      title: Row(
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(
            Icons.check_circle,
            color: Colors.blue,
            size: 16,
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: const TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            _getAbbreviatedNumber(followers),
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      trailing: Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isFollowing ? Colors.blue : Colors.white,
          border: Border.all(
            color: isFollowing ? Colors.blue : Colors.grey.shade300,
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            isFollowing ? 'Following' : 'Follow',
            style: TextStyle(
              color: isFollowing ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  _getAbbreviatedNumber(number) {
    if (number >= 1000000000) {
      return '${(number / 1000000000).toStringAsFixed(1)}B';
    }
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    }
    if (number >= 1000) {
      if (number >= 100000) {
        return '${(number / 1000).toStringAsFixed(0)}K';
      }
      return '${(number / 1000).toStringAsFixed(1)}K';
    }
    return '$number';
  }
}
