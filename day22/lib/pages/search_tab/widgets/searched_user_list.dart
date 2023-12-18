import 'package:flutter/material.dart';

import 'profile_tile_with_follow.dart';

const List<Map<String, dynamic>> _userData = [
  {
    'imagePath': 'assets/images/profile_image_1.jpg',
    'name': 'John Doe',
    'userName': 'johndoe',
    'followers': 403000,
    'isFollowing': false,
  },
  {
    'imagePath': 'assets/images/profile_image_2.jpg',
    'name': 'Vice Doe',
    'userName': 'vicedoe',
    'followers': 920000,
    'isFollowing': false,
  },
  {
    'imagePath': 'assets/images/profile_image_3.jpg',
    'name': 'Hurricane Pete',
    'userName': 'hurricane',
    'followers': 266000,
    'isFollowing': false,
  },
  {
    'imagePath': 'assets/images/profile_image_4.jpg',
    'name': 'Skquard Frank',
    'userName': 'skquard',
    'followers': 26600,
    'isFollowing': false,
  },
  {
    'imagePath': 'assets/images/profile_image_1.jpg',
    'name': 'Conqqeer John',
    'userName': 'conqqeer',
    'followers': 1241000,
    'isFollowing': false,
  },
  {
    'imagePath': 'assets/images/profile_image_2.jpg',
    'name': 'Tqble Frank',
    'userName': 'tqble',
    'followers': 125,
    'isFollowing': false,
  },
  {
    'imagePath': 'assets/images/profile_image_3.jpg',
    'name': 'Barqck Obama',
    'userName': 'barqck',
    'followers': 525124100,
    'isFollowing': false,
  },
  {
    'imagePath': 'assets/images/profile_image_4.jpg',
    'name': 'Prqnce John',
    'userName': 'prqnce',
    'followers': 125000,
    'isFollowing': false,
  },
];

class SearchedUserList extends StatelessWidget {
  const SearchedUserList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: _userData.length,
        itemBuilder: (context, index) {
          return ProfileTileWithFollow(
            imagePath: _userData[index]['imagePath'],
            name: _userData[index]['name'],
            userName: _userData[index]['userName'],
            followers: _userData[index]['followers'],
            isFollowing: _userData[index]['isFollowing'],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
            thickness: 0.5,
            indent: 65,
          );
        },
      ),
    );
  }
}
