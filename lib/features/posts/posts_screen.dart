import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/features/posts/widgets/image_post.dart';
import 'package:tiktok/features/posts/widgets/only_post.dart';

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
                if (index % 2 == 0) {
                  return OnlyPost(faker: faker);
                }
                return ImagePost(faker: faker);
              },
            ),
          ],
        ),
      ),
    );
  }
}
