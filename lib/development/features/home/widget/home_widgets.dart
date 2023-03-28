import 'package:flutter/material.dart';

import 'package:flutter_reddit_clone/development/features/home/widget/sub_card.dart';
import '../../../models/subreddit.dart';

class HomeWidgets {
  static Widget noData() {
    return const Text("No user data");
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
