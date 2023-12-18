import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/utils.dart';

final tabs = [
  "All",
  "Replies",
  "Mentions",
  "Views",
  "Follows",
  "Likes",
];

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => ActivityScreenState();
}

class ActivityScreenState extends State<ActivityScreen> {
  int _selectedIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 5,
                left: 20,
                child: Text(
                  "Activity",
                  style: TextStyle(
                    color: isDarkMode(context) ? Colors.white : Colors.black,
                    fontSize: Sizes.size32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          bottom: TabBar(
            tabAlignment: TabAlignment.start,
            labelPadding: const EdgeInsets.symmetric(
              horizontal: Sizes.size4,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size16,
            ),
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            unselectedLabelColor:
                !isDarkMode(context) ? Colors.black : Colors.white,
            unselectedLabelStyle: const TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
            labelColor: isDarkMode(context) ? Colors.black : Colors.white,
            labelStyle: const TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
            isScrollable: true,
            indicatorColor:
                isDarkMode(context) ? Colors.grey.shade900 : Colors.white,
            tabs: [
              for (var tab in tabs)
                Container(
                  width: Sizes.size96 + 2 * Sizes.size8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Sizes.size10,
                    ),
                    color: _selectedIndex == tabs.indexOf(tab)
                        ? isDarkMode(context)
                            ? Colors.white
                            : Colors.black
                        : !isDarkMode(context)
                            ? Colors.white
                            : Colors.black,
                    border: Border.all(
                      color: isDarkMode(context)
                          ? Colors.grey.shade700
                          : Colors.grey.shade300,
                    ),
                  ),
                  child: Tab(
                    text: tab,
                  ),
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: Sizes.size20,
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "john_mobbin",
                  acting: "Mentioned you",
                  content:
                      "Here's a thread you should follow if you love botany @jane_mobbin",
                  time: "4",
                  icon: FontAwesomeIcons.threads,
                  iconStyle: "threads",
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "john_mobbin",
                  acting: "Starting out my gardening club with thr...",
                  content: "Count me in!",
                  time: "4",
                  icon: FontAwesomeIcons.share,
                  iconStyle: "share",
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "the.plantdads",
                  acting: "Followed you",
                  content: "",
                  time: "5",
                  icon: FontAwesomeIcons.solidUser,
                  iconStyle: "user",
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "the.plantdads",
                  acting: "Definitely broken! 🧵👀🌱",
                  content: "",
                  time: "5",
                  icon: FontAwesomeIcons.solidHeart,
                  iconStyle: "heart",
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "theberryjungle",
                  acting: "🧵👀🌱",
                  content: "",
                  time: "5",
                  icon: FontAwesomeIcons.solidHeart,
                  iconStyle: "heart",
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: Sizes.size20,
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "john_mobbin",
                  acting: "Starting out my gardening club with thr...",
                  content: "Count me in!",
                  time: "4",
                  icon: FontAwesomeIcons.share,
                  iconStyle: "share",
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: Sizes.size20,
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "john_mobbin",
                  acting: "Mentioned you",
                  content:
                      "Here's a thread you should follow if you love botany @jane_mobbin",
                  time: "4",
                  icon: FontAwesomeIcons.threads,
                  iconStyle: "threads",
                ),
              ],
            ),
            const Center(
              child: Text("Views"),
            ),
            Column(
              children: [
                const SizedBox(
                  height: Sizes.size20,
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "the.plantdads",
                  acting: "Followed you",
                  content: "",
                  time: "5",
                  icon: FontAwesomeIcons.solidUser,
                  iconStyle: "user",
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(
                  height: Sizes.size20,
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "the.plantdads",
                  acting: "Definitely broken! 🧵👀🌱",
                  content: "",
                  time: "5",
                  icon: FontAwesomeIcons.solidHeart,
                  iconStyle: "heart",
                ),
                ActivityFriendView(
                  faker: faker,
                  name: "theberryjungle",
                  acting: "🧵👀🌱",
                  content: "",
                  time: "5",
                  icon: FontAwesomeIcons.solidHeart,
                  iconStyle: "heart",
                ),
              ],
            ),
            for (var tab in tabs.skip(6))
              Center(
                child: Text(tab),
              ),
          ],
        ),
      ),
    );
  }
}

class ActivityFriendView extends StatelessWidget {
  const ActivityFriendView({
    super.key,
    required this.faker,
    required this.name,
    required this.acting,
    required this.content,
    required this.time,
    required this.icon,
    required this.iconStyle,
  });

  final Faker faker;
  final String name;
  final String acting;
  final String content;
  final String time;
  final IconData icon;
  final String iconStyle;

  String truncateWithEllipsis(String text, int cutoff) {
    return text.length > cutoff ? '${text.substring(0, cutoff)}...' : text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size8,
        vertical: Sizes.size8,
      ),
      child: Column(
        children: [
          ListTile(
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                CircleAvatar(
                  radius: Sizes.size24,
                  backgroundImage: NetworkImage(
                    faker.image.image(
                      keywords: ["people"],
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    padding: const EdgeInsets.all(
                      Sizes.size2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Sizes.size20,
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      color: iconStyle == "threads"
                          ? Colors.green.shade400
                          : iconStyle == "share"
                              ? Colors.blue.shade400
                              : iconStyle == "user"
                                  ? Colors.purple.shade800
                                  : Colors.red.shade600,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: Sizes.size16,
                    ),
                  ),
                ),
              ],
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      truncateWithEllipsis(
                        name,
                        15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color:
                            isDarkMode(context) ? Colors.white : Colors.black,
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: Sizes.size4,
                    ),
                    Text(
                      "${time}h",
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: Sizes.size16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: Sizes.size6,
                ),
                Text(
                  acting,
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: Sizes.size16,
                  ),
                ),
              ],
            ),
            subtitle: iconStyle == "user" || iconStyle == "heart"
                ? null
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: Sizes.size8,
                    ),
                    child: Text(
                      content,
                      style: TextStyle(
                        color:
                            isDarkMode(context) ? Colors.white : Colors.black,
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
            trailing: iconStyle == "user"
                ? Container(
                    width: Sizes.size96,
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.size4,
                      vertical: Sizes.size8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        Sizes.size8,
                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.grey.shade300,
                      ),
                      color: Colors.white,
                    ),
                    child: Text(
                      "Following",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : null,
          ),
          Divider(
            color: Colors.grey.shade400,
            height: Sizes.size10,
            indent: 80,
          ),
        ],
      ),
    );
  }
}
