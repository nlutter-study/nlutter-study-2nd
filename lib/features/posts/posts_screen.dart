import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
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
          SliverFixedExtentList.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('List Item $index'),
              );
            },
            itemExtent: 500.0,
          ),
        ],
      ),
    ));
  }
}
