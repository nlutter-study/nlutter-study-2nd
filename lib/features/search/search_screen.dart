import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';

// final tabs = [
//   "Top",
//   "Users",
//   "Videos",
//   "Sounds",
//   "LIVE",
//   "Shopping",
//   "Brands",
// ];

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => SearchrScreenState();
}

class SearchrScreenState extends State<SearchScreen> {
  var faker = Faker();
  final TextEditingController _searchController =
      TextEditingController(text: "");

  final ScrollController _scrollController = ScrollController();

  void _onSearchChanged(String value) {
    print(value);
  }

  void _onSearchSubmitted(String value) {
    print(value);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        controller: _scrollController,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.size24,
            ),
            child: Text(
              "Search",
              style: TextStyle(
                color: Colors.black,
                fontSize: Sizes.size32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: Sizes.size16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size24,
            ),
            child: CupertinoSearchTextField(
              controller: _searchController,
              onChanged: _onSearchChanged,
              onSubmitted: _onSearchSubmitted,
            ),
          ),
          const SizedBox(
            height: Sizes.size16,
          ),
          for (var i = 0; i < 10; i++)
            SearchFriendView(
              faker: faker,
            ),
        ],
      ),
    );
  }
}

class SearchFriendView extends StatelessWidget {
  const SearchFriendView({
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
      child: ListTile(
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
                    20,
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
        trailing: Container(
          width: Sizes.size96,
          height: Sizes.size36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              Sizes.size10,
            ),
            border: Border.all(
              color: Colors.grey.shade400,
            ),
          ),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(
                color: Colors.black,
                fontSize: Sizes.size16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
