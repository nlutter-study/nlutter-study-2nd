import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/sizes.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefresh,
        displacement: 50,
        edgeOffset: 20,
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: false,
              expandedHeight: 50.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Icon(
                  FontAwesomeIcons.threads,
                ),
              ),
            ),
            SliverList.builder(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  clipBehavior: Clip.none,
                  height: 450,
                  alignment: Alignment.center,
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
                                    faker.image.image(),
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
                              height: 300,
                              width: 3,
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey.shade300, // 경계선 색상
                                    width: 280, // 경계선 두께
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: Sizes.size8,
                            ),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      faker.image.image(),
                                      scale: 0.5,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 30,
                                  bottom: -15,
                                  child: SizedBox(
                                    height: 30,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        faker.image.image(),
                                        scale: 0.4,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: -30,
                                  child: SizedBox(
                                    height: 25,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        faker.image.image(),
                                        scale: 0.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Sizes.size14,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    faker.person.name(),
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: Sizes.size4,
                                  ),
                                  const Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${faker.randomGenerator.integer(10)}m',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: Sizes.size4,
                                  ),
                                  const Icon(
                                    Icons.more_horiz,
                                    size: 30,
                                  ),
                                ],
                              ),
                              Text(
                                faker.lorem.sentence(),
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(
                                height: Sizes.size8,
                              ),
                              Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Image(
                                  image: NetworkImage(
                                    faker.image.image(),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: Sizes.size8,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
