import 'package:challenge/utils/utils.dart';
import 'package:challenge/widgets/bottom_sheet/thread_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';

class ThreadPostCard extends StatelessWidget {
  const ThreadPostCard({
    super.key,
    required this.authorNickname,
    this.avatarUrl,
    this.contentImageUrls,
    this.isCertificated = false,
    text,
  }) : text = text ?? "";
  final String authorNickname;
  final bool isCertificated;
  final String? avatarUrl;
  final List<String>? contentImageUrls;
  final String text;

  void _showPostMenu(BuildContext context) {
    final isDark = isDarkMode(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: true,
      builder: (context) => const ThreadBottomSheet(),
      showDragHandle: true,
      elevation: 0,
      backgroundColor: getBackgroundColorByMode(isDark),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _authorAvatar(),
              Gaps.v6,
              Expanded(
                child: Container(
                  width: 2,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              Gaps.v6,
              _commentAvatar(),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.size10,
                vertical: Sizes.size8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleBar(context),
                  Gaps.v8,
                  Text(text),
                  Gaps.v8,
                  if (contentImageUrls != null)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (var contentImageUrl in contentImageUrls!)
                            _contentImage(contentImageUrl),
                        ],
                      ),
                    ),
                  Gaps.v14,
                  _postWidgets(),
                  Gaps.v24,
                  const Text(
                    "36 replies • 391 likes",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Gaps.v8,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _postWidgets() {
    return const Row(
      children: [
        FaIcon(
          FontAwesomeIcons.heart,
          size: Sizes.size20,
        ),
        Gaps.h10,
        FaIcon(
          FontAwesomeIcons.comment,
          size: Sizes.size20,
        ),
        Gaps.h10,
        FaIcon(
          FontAwesomeIcons.shareFromSquare,
          size: Sizes.size20,
        ),
        Gaps.h10,
        FaIcon(
          FontAwesomeIcons.message,
          size: Sizes.size20,
        ),
      ],
    );
  }

  Container _contentImage(String contentImageUrl) {
    return Container(
      margin: const EdgeInsets.only(
        right: Sizes.size10,
      ),
      clipBehavior: Clip.hardEdge,
      constraints: const BoxConstraints(
        maxWidth: Sizes.size96 * 2.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Image.network(
        contentImageUrl,
        fit: BoxFit.contain,
      ),
    );
  }

  Row _titleBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              authorNickname,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: Sizes.size16,
              ),
            ),
            Gaps.h4,
            if (isCertificated)
              const FaIcon(
                FontAwesomeIcons.certificate,
                color: Colors.blueAccent,
                size: Sizes.size18,
              ),
          ],
        ),
        Row(
          children: [
            const Text(
              "2h",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Gaps.h12,
            GestureDetector(
              onTap: () => _showPostMenu(context),
              child: const FaIcon(
                FontAwesomeIcons.ellipsis,
                size: Sizes.size18,
              ),
            ),
          ],
        ),
      ],
    );
  }

  SizedBox _commentAvatar() {
    return SizedBox(
      height: Sizes.size48,
      width: Sizes.size60,
      child: Stack(
        children: [
          const Positioned(
            bottom: 0,
            child: CircleAvatar(
              backgroundColor: Colors.purple,
              radius: Sizes.size16,
              foregroundColor: Colors.white,
              child: Text(
                "U",
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  50,
                ),
                border: Border.all(
                  color: Colors.white,
                  width: Sizes.size2,
                ),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.pink,
                foregroundColor: Colors.white,
                child: Text(
                  "H",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Stack _authorAvatar() {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(
            Sizes.size5,
          ),
          child: CircleAvatar(
            radius: Sizes.size24,
            foregroundImage: avatarUrl != null
                ? NetworkImage(
                    avatarUrl!,
                  )
                : null,
            child: Text(
              authorNickname.substring(0, 1),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.white,
                width: Sizes.size3,
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: Sizes.size18,
            ),
          ),
        ),
      ],
    );
  }
}
