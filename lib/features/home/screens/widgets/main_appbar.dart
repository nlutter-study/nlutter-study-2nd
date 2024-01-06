import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Align(
        alignment: Alignment.bottomCenter,
        child: IconButton(
          icon: DFIcons.bars,
          onPressed: () {},
        ),
      ),
      title: Align(
        alignment: Alignment.topCenter,
        child: Image.asset(
          'assets/images/deviflix.png',
          width: 118,
        ),
      ),
      actions: [
        Align(
          alignment: Alignment.bottomCenter,
          child: IconButton(
            icon: DFIcons.search,
            onPressed: () {},
          ),
        ),
      ],
      flexibleSpace: Column(
        children: [
          Container(
            height: kToolbarHeight,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.0, 0.6),
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor,
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
