import 'package:day22/pages/home_tab/widgets/double_profile_images.dart';
import 'package:day22/pages/widgets/profile_image_from_asset.dart';
import 'package:day22/pages/widgets/profile_with_add_icon.dart';
import 'package:day22/pages/home_tab/widgets/triple_profile_images.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThreadCard extends StatelessWidget {
  final String profileImagePath;
  final String name;
  final bool isAuthorized;
  final String timeOfCreation;
  final String bodyText;
  final List<String> bodyImagePaths;
  final List<String> commentersProfileImagePaths;
  final int commentCount;
  final int likeCount;
  final void Function() onSettingPressed;

  static const leftColumnWidth = 60.0;
  static const horizontalPadding = 14.0;
  static const headerHeight = 50.0;
  static const bottomHeight = 50.0;

  const ThreadCard(
      {super.key,
      required this.profileImagePath,
      required this.name,
      required this.isAuthorized,
      required this.timeOfCreation,
      required this.bodyText,
      required this.bodyImagePaths,
      required this.commentersProfileImagePaths,
      required this.commentCount,
      required this.likeCount,
      required this.onSettingPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: IntrinsicHeight(
            child: Row(
              children: [
                SizedBox(
                  width: leftColumnWidth,
                  child: _leftColumnProfileImages(),
                ),
                Expanded(
                  child: _rightColumnBody(),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget _leftColumnProfileImages() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        _myProfile(),
        Expanded(
          child: _divider(),
        ),
        _yourProfiles(),
      ],
    );
  }

  _myProfile() {
    return ProfileWithIcon(
        size: headerHeight,
        profileImagePath: profileImagePath,
        iconBackgroundColor: Colors.black,
        iconData: Icons.add);
  }

  Widget _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 4,
      color: Colors.grey.shade300,
    );
  }

  _yourProfiles() {
    const emptyImagePath = 'assets/images/profile_image_empty.png';
    if (commentersProfileImagePaths.isEmpty) {
      return const ProfileImageFromAsset(
        emptyImagePath,
        imageSize: bottomHeight,
      );
    }

    if (commentersProfileImagePaths.length == 1) {
      return ProfileImageFromAsset(
        commentersProfileImagePaths[0],
        imageSize: bottomHeight,
      );
    }

    if (commentersProfileImagePaths.length == 2) {
      return DoubleProfileImages(
        commentersProfileImagePaths,
        imageSize: bottomHeight,
      );
    }

    return TripleProfileImages(
      commentersProfileImagePaths,
      imageSize: bottomHeight,
    );
  }

  Widget _rightColumnBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _nameAndEtc(),
        _bodyText(),
        if (bodyImagePaths.isNotEmpty) _bodyImages(),
        _buttons(),
        _commentsAndFavorites(),
      ],
    );
  }

  _nameAndEtc() {
    return Row(
      children: [
        _name(),
        const SizedBox(width: 4),
        _officialMark(),
        const Spacer(),
        _timeOfCreation(),
        const SizedBox(width: 10),
        _setting(),
      ],
    );
  }

  Widget _name() {
    return Text(
      name,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }

  Widget _officialMark() {
    return const Icon(
      Icons.check_circle,
      color: Colors.blue,
      size: 20,
    );
  }

  Widget _timeOfCreation() {
    return Text(
      timeOfCreation,
      style: const TextStyle(color: Colors.grey, fontSize: 18),
    );
  }

  Widget _setting() {
    return IconButton(
      onPressed: onSettingPressed,
      icon: const Icon(
        Icons.more_horiz,
        color: Colors.black,
        size: 28,
      ),
    );
  }

  Widget _bodyText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        bodyText,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, height: 1.5),
      ),
    );
  }

  Widget _bodyImages() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (final path in bodyImagePaths)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: _roundedCornerImageFromPath(path),
              ),
          ],
        ),
      ),
    );
  }

  Widget _roundedCornerImageFromPath(String path) {
    const height = 200.0;
    final borderRadius = BorderRadius.circular(10);
    return Container(
      clipBehavior: Clip.hardEdge,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buttons() {
    const iconSize = 24.0;
    return const Row(
      children: [
        FaIcon(FontAwesomeIcons.heart, size: iconSize),
        SizedBox(width: 20),
        FaIcon(FontAwesomeIcons.comment, size: iconSize),
        SizedBox(width: 20),
        FaIcon(FontAwesomeIcons.arrowsRotate, size: iconSize),
        SizedBox(width: 20),
        FaIcon(FontAwesomeIcons.paperPlane, size: iconSize),
      ],
    );
  }

  Widget _commentsAndFavorites() {
    return Container(
      height: bottomHeight,
      alignment: Alignment.centerLeft,
      child: Text(
        '$commentCount replies ﹒ $likeCount likes',
        style: const TextStyle(color: Colors.grey, fontSize: 18),
      ),
    );
  }
}
