import 'package:flutter/material.dart';

import '../../../models/subreddit.dart';

class SubCard extends StatelessWidget {
  const SubCard({
    super.key,
    required this.sub,
  });

  final Subreddit? sub;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          sub!.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
