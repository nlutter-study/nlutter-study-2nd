import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/sizes.dart';

class WritePost extends StatefulWidget {
  const WritePost({
    super.key,
    required this.faker,
  });

  final Faker faker;

  @override
  State<WritePost> createState() => _WritePostState();
}

class _WritePostState extends State<WritePost> {
  final TextEditingController textController = TextEditingController();
  bool isPostButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    textController.addListener(() {
      setState(() {
        isPostButtonEnabled = textController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: 600,
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                              widget.faker.image.image(),
                              scale: 1.5,
                            ),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -5,
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                                border: Border.fromBorderSide(
                                  BorderSide(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                              ),
                              child: const Icon(
                                color: Colors.white,
                                Icons.add,
                                size: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 80,
                        width: 3,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.shade300, // 경계선 색상
                              width: 70, // 경계선 두께
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: Sizes.size8,
                      ),
                      Opacity(
                        opacity: 0.6,
                        child: ScaleTransition(
                          scale: const AlwaysStoppedAnimation(0.6),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              widget.faker.image.image(),
                              scale: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size28,
                      vertical: Sizes.size14,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.faker.person.name(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextField(
                          controller: textController,
                          decoration: const InputDecoration(
                            hintText: "Start a thread...",
                            border: InputBorder.none,
                          ),
                          maxLines: 2,
                        ),
                        const FaIcon(
                          FontAwesomeIcons.paperclip,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Anyone can reply",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                Opacity(
                  opacity: isPostButtonEnabled ? 1 : 0.3,
                  child: const Text(
                    "Post",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
