import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int currentIndex = 0;

  final List<String> tabs = [
    "All",
    "Replies",
    "Mentions",
    "Verified",
  ];

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var faker = Faker();

    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Row(
            children: [
              Text(
                "Activity",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(52),
            child: TabBar(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              onTap: _onTap,
              isScrollable: true,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              labelPadding: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              indicatorColor: Colors.transparent,
              tabs: [
                for (final tab in tabs)
                  Tab(
                    child: Container(
                      width: 120,
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: currentIndex == tabs.indexOf(tab)
                            ? Colors.black
                            : Colors.white,
                        border: Border.all(
                          color: currentIndex == tabs.indexOf(tab)
                              ? Colors.black
                              : Colors.grey.shade400,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 4,
                      ),
                      child: Text(
                        tab,
                        style: TextStyle(
                          color: currentIndex == tabs.indexOf(tab)
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Notification(faker: faker),
                Notification(faker: faker),
                Notification(faker: faker),
                Notification(faker: faker),
                Notification(faker: faker),
                Notification(faker: faker),
                Notification(faker: faker),
              ],
            ),
            for (final tab in tabs.skip(1))
              Center(
                child: Text(tab),
              ),
          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    super.key,
    required this.faker,
  });

  final Faker faker;

  @override
  Widget build(BuildContext context) {
    var isFollowing = faker.randomGenerator.boolean();

    var isMention = !isFollowing && faker.randomGenerator.boolean();

    return ListTile(
      isThreeLine: isMention,
      leading: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Padding(
            padding: const EdgeInsets.all(3),
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(
                "https://source.unsplash.com/random/${faker.randomGenerator.integer(100)}x${faker.randomGenerator.integer(100)}",
              ),
            ),
          ),
          if (isMention)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const FaIcon(
                  FontAwesomeIcons.threads,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
          if (isFollowing)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const FaIcon(
                  FontAwesomeIcons.solidUser,
                  size: 10,
                  color: Colors.white,
                ),
              ),
            ),
          if (!isFollowing && !isMention)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
                child: const FaIcon(
                  FontAwesomeIcons.reply,
                  size: 10,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
      title: RichText(
        text: TextSpan(
            text: faker.internet.userName(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: " ${faker.randomGenerator.integer(10)}h",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                ),
              )
            ]),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            isFollowing
                ? "Followed you"
                : isMention
                    ? "Mentioned you"
                    : faker.lorem.sentence(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
            ),
          ),
          if (isMention)
            const SizedBox(
              height: 4,
            ),
          if (isMention)
            Text(
              faker.lorem.sentence(),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
        ],
      ),
      trailing: isFollowing
          ? Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Following",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : null,
    );
  }
}
