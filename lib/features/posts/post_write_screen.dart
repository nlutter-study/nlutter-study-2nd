import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/posts/widgets/write_post.dart';

class PostWrite extends StatefulWidget {
  const PostWrite({super.key});

  @override
  State<PostWrite> createState() => _PostWriteState();
}

class _PostWriteState extends State<PostWrite> {
  var faker = Faker();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.hardEdge,
      height: size.height * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Sizes.size14,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          leadingWidth: 100,
          elevation: 1,
          title: const Text(
            'New thread',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 25,
              ),
              child: const Text(
                textAlign: TextAlign.center,
                "Cancel",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
        body: WritePost(
          faker: faker,
        ),
      ),
    );
  }
}
