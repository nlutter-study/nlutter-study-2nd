import 'package:flutter/material.dart';

import '../widgets/index.dart';
import 'widgets/index.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({super.key});

  @override
  State<ActivityTab> createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab>
    with TickerProviderStateMixin {
  late final _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            const BottomTabTitle('Activity'),
            const SizedBox(height: 15),
            TabBar(
              labelPadding: const EdgeInsets.only(right: 8),
              controller: _tabController,
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              tabs: [
                Tab(
                  child: TabButton(
                      name: 'All', isSelected: _tabController.index == 0),
                ),
                Tab(
                  child: TabButton(
                      name: 'Replies', isSelected: _tabController.index == 1),
                ),
                Tab(
                  child: TabButton(
                      name: 'Mentions', isSelected: _tabController.index == 2),
                ),
                Tab(
                  child: TabButton(
                      name: 'Verified', isSelected: _tabController.index == 3),
                ),
                Tab(
                  child: TabButton(
                      name: 'Follows', isSelected: _tabController.index == 4),
                ),
              ],
            ),
            Expanded(
              // height: 200,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ActivityList(),
                  ActivityList(),
                  ActivityList(),
                  ActivityList(),
                  ActivityList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
