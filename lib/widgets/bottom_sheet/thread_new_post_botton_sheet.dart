import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThreadNewPostBottomSheet extends StatefulWidget {
  const ThreadNewPostBottomSheet({super.key});

  @override
  State<ThreadNewPostBottomSheet> createState() =>
      _ThreadNewPostBottomSheetState();
}

class _ThreadNewPostBottomSheetState extends State<ThreadNewPostBottomSheet> {
  bool _hasContent = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      height: size.height * 0.85,
      child: Scaffold(
        appBar: _appBar(),
        body: _body(size: size),
      ),
    );
  }

  Padding _body({required Size size}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size16,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                const Divider(),
                Gaps.v10,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      child: Text(
                        "H",
                      ),
                    ),
                    Gaps.h16,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hanum",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextField(
                            onChanged: (String value) {
                              setState(() {
                                _hasContent = value != "";
                              });
                            },
                            onTapOutside: (e) {
                              FocusScope.of(context).unfocus();
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "Start a thread...",
                            ),
                          ),
                          Gaps.v10,
                          const FaIcon(
                            FontAwesomeIcons.paperclip,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            width: size.width * 0.9,
            bottom: Sizes.size52,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Anyone can reply",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Post",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _hasContent
                        ? Colors.blueAccent
                        : Colors.blueAccent.shade100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        "New thread",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Padding(
          padding: EdgeInsets.only(left: 9),
          child: Center(
            child: Text(
              "Cancel",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
