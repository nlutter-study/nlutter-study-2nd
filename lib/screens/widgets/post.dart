import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:threads_clone/screens/home_screen.dart';

class Post extends StatelessWidget {
  final bool showFooter;
  final bool showReply;

  const Post({
    super.key,
    this.showFooter = true,
    this.showReply = false,
  });

  void _onTapMenu(BuildContext context) async {
    await showModalBottomSheet(
      showDragHandle: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      context: context,
      builder: (context) {
        return const Menu();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final faker = Faker();

    final showImage = faker.randomGenerator.boolean();

    final profileAvatarSeed = faker.randomGenerator.integer(200, min: 100);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade200,
          ),
        ),
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        "https://source.unsplash.com/random/$profileAvatarSeed",
                      ),
                    ),
                    Positioned(
                      right: -2,
                      bottom: -2,
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 3,
                          ),
                        ),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            color: Colors.white,
                            size: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Expanded(
                  child: VerticalDivider(
                    thickness: 2,
                  ),
                ),
                if (showFooter)
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      bottom: 12,
                      top: 12,
                    ),
                    child: const Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topRight,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                            "https://picsum.photos/10/10",
                          ),
                        ),
                        Positioned(
                          right: 24,
                          top: 8,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundImage: NetworkImage(
                              "https://picsum.photos/8/8",
                            ),
                          ),
                        ),
                        Positioned(
                          top: 24,
                          right: 12,
                          child: CircleAvatar(
                            radius: 6,
                            backgroundImage: NetworkImage(
                              "https://picsum.photos/6/6",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (showReply) const SizedBox(height: 12),
                if (showReply)
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://source.unsplash.com/random/${profileAvatarSeed + 1}",
                    ),
                  ),
                if (showReply) const SizedBox(height: 32),
              ],
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        faker.internet.userName(),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                        size: 16,
                      ),
                      const Expanded(
                        child: SizedBox.shrink(),
                      ),
                      const Text(
                        "1h",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(width: 8),
                      GestureDetector(
                        onTap: () => _onTapMenu(context),
                        child: const FaIcon(
                          FontAwesomeIcons.ellipsis,
                          color: Colors.black,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          faker.lorem.sentence(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  if (showImage)
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 200,
                            margin: const EdgeInsets.only(right: 12),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Image(
                              image: NetworkImage(
                                "https://picsum.photos/300/200",
                              ),
                            ),
                          ),
                          Container(
                            height: 200,
                            margin: const EdgeInsets.only(right: 12),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Image(
                              image: NetworkImage(
                                "https://picsum.photos/300/201",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  const SizedBox(height: 12),
                  const Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.heart,
                        size: 20,
                      ),
                      SizedBox(width: 16),
                      FaIcon(
                        FontAwesomeIcons.message,
                        size: 20,
                      ),
                      SizedBox(width: 16),
                      FaIcon(
                        FontAwesomeIcons.arrowsRotate,
                        size: 20,
                      ),
                      SizedBox(width: 16),
                      FaIcon(
                        FontAwesomeIcons.paperPlane,
                        size: 20,
                      ),
                    ],
                  ),
                  if (showFooter)
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${faker.randomGenerator.integer(100)} replies",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "${faker.randomGenerator.integer(100)} likes",
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  if (showReply) const SizedBox(height: 24),
                  if (showReply)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          faker.internet.userName(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                          size: 16,
                        ),
                        const Expanded(
                          child: SizedBox.shrink(),
                        ),
                        const Text(
                          "1h",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () => _onTapMenu(context),
                          child: const FaIcon(
                            FontAwesomeIcons.ellipsis,
                            color: Colors.black,
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                  if (showReply) const SizedBox(height: 4),
                  if (showReply)
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            faker.lorem.sentence(),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  if (showReply) const SizedBox(height: 12),
                  if (showReply)
                    const Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.heart,
                          size: 20,
                        ),
                        SizedBox(width: 16),
                        FaIcon(
                          FontAwesomeIcons.message,
                          size: 20,
                        ),
                        SizedBox(width: 16),
                        FaIcon(
                          FontAwesomeIcons.arrowsRotate,
                          size: 20,
                        ),
                        SizedBox(width: 16),
                        FaIcon(
                          FontAwesomeIcons.paperPlane,
                          size: 20,
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
