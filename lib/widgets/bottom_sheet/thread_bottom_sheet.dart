import 'package:challenge/constants/gaps.dart';
import 'package:challenge/constants/sizes.dart';
import 'package:challenge/utils/utils.dart';
import 'package:challenge/widgets/bottom_sheet/thread_report_sheet.dart';
import 'package:flutter/material.dart';

class ThreadBottomSheet extends StatefulWidget {
  const ThreadBottomSheet({super.key});

  @override
  State<ThreadBottomSheet> createState() => _ThreadBottomSheetState();
}

class _ThreadBottomSheetState extends State<ThreadBottomSheet> {
  bool _isReportScreen = false;

  void _openReportSheet() {
    setState(() {
      _isReportScreen = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final height = _isReportScreen ? deviceHeight * 0.7 : deviceHeight * 0.4;
    final isDark = isDarkMode(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: getBackgroundColorByMode(isDark),
        borderRadius: BorderRadius.circular(20),
      ),
      height: height,
      child: _isReportScreen
          ? ThreadReportSheet()
          : Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.size24,
                  vertical: Sizes.size32,
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: isDark
                            ? Colors.grey.shade800
                            : Colors.grey.shade200,
                      ),
                      child: const Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Unfollow",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Divider(
                            height: 0,
                          ),
                          ListTile(
                            title: Text(
                              "Mute",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gaps.v20,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: isDark
                            ? Colors.grey.shade800
                            : Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          const ListTile(
                            title: Text(
                              "Hide",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Divider(
                            height: 0,
                          ),
                          ListTile(
                            onTap: _openReportSheet,
                            title: const Text(
                              "Report",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
