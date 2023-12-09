import 'package:day22/pages/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/index.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            const BottomTabTitle('Search'),
            const SizedBox(height: 15),
            CupertinoSearchTextField(
              placeholder: 'Search',
              padding: const EdgeInsets.all(10),
              style: const TextStyle(fontSize: 16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SearchedUserList(),
          ],
        ),
      ),
    );
  }
}
