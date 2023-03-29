import 'package:flutter/material.dart';

import 'package:flutter_reddit_clone/development/features/feed/widgets/sub_card.dart';
import 'package:flutter_reddit_clone/development/theme/pallette.dart';
import '../../../models/subreddit.dart';
import '../../../theme/custom_styles.dart';

class HomeWidgets {
  static Widget noData() {
    return const Text("No user data");
  }

  static Widget refreshIndicator() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Welcome to the clone of clones!",
          style: CustomStyles.kHeadlineSmall
              .copyWith(color: Pallete.orangeColor, fontSize: 20),
        ),
        const SizedBox(height: 20),
        Text(
          'Tap on the refresh button to get the latest subs...',
          style: CustomStyles.kHeadlineSmall
              .copyWith(color: Pallete.orangeColor, fontSize: 16),
        ),
      ],
    );
  }

  static Widget buildSubs(List<Subreddit?> subs) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: subs.length,
      itemBuilder: (BuildContext context, int index) {
        final sub = subs[index];
        return SubCard(sub: sub);
      },
    );
  }
}
