import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';

class VideoComments extends StatefulWidget {
  const VideoComments({super.key});

  @override
  State<VideoComments> createState() => _VideoCommentsState();
}

class _VideoCommentsState extends State<VideoComments> {
  void _onClosePressed() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Sizes.size14,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Comments"),
          actions: [
            IconButton(
              onPressed: _onClosePressed,
              icon: const Icon(FontAwesomeIcons.xmark),
            ),
          ],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size16,
            vertical: Sizes.size10,
          ),
          separatorBuilder: (context, index) => Gaps.v20,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.grey,
                ),
                Gaps.h10,
                const Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "원장",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: Sizes.size14,
                      ),
                    ),
                    Gaps.v3,
                    Text(
                      "여기는 우리 집 안이야",
                      style: TextStyle(
                        fontSize: Sizes.size14,
                      ),
                    ),
                  ],
                )),
                Gaps.h10,
                Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      size: Sizes.size20,
                      color: Colors.grey.shade500,
                    ),
                    Gaps.v2,
                    Text(
                      "1.2k",
                      style: TextStyle(
                        fontSize: Sizes.size14,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        ),
        bottomNavigationBar: const BottomAppBar(
          color: Colors.white,
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                child: Text("원장"),
              ),
              Gaps.h10,
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  hintText: "Add a comment...",
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
