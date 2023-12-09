import 'package:flutter/material.dart';

import 'profile_image_from_asset.dart';

class NewThreadBottomSheet extends StatefulWidget {
  const NewThreadBottomSheet({super.key});

  @override
  State<NewThreadBottomSheet> createState() => _NewThreadBottomSheetState();
}

class _NewThreadBottomSheetState extends State<NewThreadBottomSheet> {
  static const String profileImagePath = 'assets/images/profile_image_1.jpg';

  static const profileSize = 50.0;

  static const String name = 'John Doe';

  final TextEditingController _textEditingController = TextEditingController();

  bool isTextValid = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    const double topPaddingHeight = 60.0;

    return SizedBox(
      height: screenHeight - topPaddingHeight,
      child: Column(
        children: [
          _cancelButtonAndTitle(),
          const Divider(),
          _body(),
          const Spacer(),
          _bottom(),
        ],
      ),
    );
  }

  Widget _cancelButtonAndTitle() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          const Text(
            'New Thread',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.transparent,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _body() {
    const leftColumnWidth = 60.0;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: IntrinsicHeight(
        child: Row(
          children: [
            SizedBox(
              width: leftColumnWidth,
              child: _leftColumnProfileImages(),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _rightColumnBody(),
            ),
          ],
        ),
      ),
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
        _smallMyProfile(),
      ],
    );
  }

  _myProfile() {
    return const ProfileImageFromAsset(profileImagePath,
        imageSize: profileSize);
  }

  _smallMyProfile() {
    return Stack(
      children: [
        Container(
          height: profileSize,
          width: profileSize,
          alignment: Alignment.center,
          child: const ProfileImageFromAsset(profileImagePath,
              imageSize: profileSize / 2),
        ),
        Container(
          height: profileSize,
          width: profileSize,
          color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
        )
      ],
    );
  }

  Widget _divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: 4,
      color: Colors.grey.shade300,
    );
  }

  Widget _rightColumnBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _name(),
        _inputText(),
        _addFiles(),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }

  Widget _name() {
    return const Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }

  Widget _inputText() {
    return TextField(
      controller: _textEditingController,
      maxLines: null,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'Start a thread...',
      ),
      onChanged: (value) {
        setState(() {
          isTextValid = value.isNotEmpty;
        });
      },
    );
  }

  Widget _addFiles() {
    return const Icon(
      Icons.attach_file,
      color: Colors.grey,
    );
  }

  Widget _bottom() {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Anyone can reply',
            style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Post',
              style: TextStyle(
                color: isTextValid ? Colors.blue : Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
