import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/utils.dart';

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
  static var routeName = '/search';

  const SearchScreen({
    super.key,
    this.tab,
  });

  final String? tab;

  @override
  State<SearchScreen> createState() => SearchrScreenState();
}

class SearchrScreenState extends State<SearchScreen> {
  var faker = Faker();
  final TextEditingController _searchController =
      TextEditingController(text: "");

  final ScrollController _scrollController = ScrollController();

  void _onSearchChanged(String value) {}

  void _onSearchSubmitted(String value) {}

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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Sizes.size24,
            ),
            child: Text(
              "Search",
              style: TextStyle(
                color: isDarkMode(context) ? Colors.white : Colors.black,
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

class SearchFriendView extends StatefulWidget {
  const SearchFriendView({
    super.key,
    required this.faker,
  });

  final Faker faker;

  @override
  State<SearchFriendView> createState() => _SearchFriendViewState();
}

class _SearchFriendViewState extends State<SearchFriendView> {
  String truncateWithEllipsis(String text, int cutoff) {
    return text.length > cutoff ? '${text.substring(0, cutoff)}...' : text;
  }

  bool _isFollowed = false;

  void _onFollow() {
    setState(() {
      _isFollowed = !_isFollowed;
    });
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
                widget.faker.image.image(
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
                        widget.faker.person.name(),
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
                    const Icon(
                      Icons.verified,
                      color: Colors.blue,
                      size: Sizes.size16,
                    ),
                  ],
                ),
                Text(
                  widget.faker.lorem.word(),
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
                "${widget.faker.randomGenerator.integer(1000)}K Followers",
                style: TextStyle(
                  color: isDarkMode(context) ? Colors.white : Colors.black,
                  fontSize: Sizes.size16,
                ),
              ),
            ),
            trailing: AnimatedOpacity(
              duration: const Duration(
                milliseconds: 2000,
              ),
              opacity: _isFollowed ? 1 : 0.5,
              child: GestureDetector(
                onTap: _onFollow,
                child: Container(
                  width: Sizes.size96,
                  height: Sizes.size36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Sizes.size10,
                    ),
                    border: Border.all(
                      color: Colors.grey.shade400,
                    ),
                    color: _isFollowed ? Colors.black : Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      _isFollowed ? "Following" : "Follow",
                      style: TextStyle(
                        color: _isFollowed ? Colors.white : Colors.grey,
                        fontSize: Sizes.size16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
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
