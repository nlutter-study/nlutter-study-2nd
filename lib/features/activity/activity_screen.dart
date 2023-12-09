import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

final tabs = [
  "All",
  "Replies",
  "Mentions",
  "Views",
  "Likes",
];

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => ActivityScreenState();
}

class ActivityScreenState extends State<ActivityScreen> {
  int _selectedIndex = 0;

  void _onSearchChanged(String value) {
    print(value);
  }

  void _onSearchSubmitted(String value) {
    print(value);
  }

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
          leading: const Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 5,
                left: 20,
                child: Text(
                  "Activity",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Sizes.size32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          bottom: TabBar(
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
            unselectedLabelColor: Colors.black,
            unselectedLabelStyle: const TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
            labelColor: Colors.white,
            labelStyle: const TextStyle(
              fontSize: Sizes.size16,
              fontWeight: FontWeight.w600,
            ),
            isScrollable: true,
            indicatorColor: Colors.white,
            tabs: [
              for (var tab in tabs)
                Container(
                  width: Sizes.size96 + 2 * Sizes.size8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Sizes.size10,
                    ),
                    color: _selectedIndex == tabs.indexOf(tab)
                        ? Colors.black
                        : Colors.white,
                    border: Border.all(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  child: Tab(
                    text: tab,
                  ),
                ),
            ],
          ),
        ),
        body: TabBarView(children: [
          ActivityFriendView(faker: faker),
          for (var tab in tabs.skip(1))
            Center(
              child: Text(tab),
            ),
        ]),
      ),
    );
  }
}

class ActivityFriendView extends StatelessWidget {
  const ActivityFriendView({
    super.key,
    required this.faker,
  });

  final Faker faker;

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
            leading: CircleAvatar(
              radius: Sizes.size24,
              backgroundImage: NetworkImage(
                faker.image.image(
                  keywords: ["people"],
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      truncateWithEllipsis(
                        faker.person.name(),
                        15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: Sizes.size4,
                    ),
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: Sizes.size16,
                    ),
                  ],
                ),
                Text(
                  faker.lorem.word(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: Sizes.size20,
                  ),
                ),
              ],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: Sizes.size8,
              ),
              child: Text(
                "${faker.randomGenerator.integer(1000)}K Followers",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: Sizes.size16,
                ),
              ),
            ),
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
