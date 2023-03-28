import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/theme/custom_styles.dart';

class CreateCommunityScreen extends StatelessWidget {
  const CreateCommunityScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create a community"),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Create Community Screen',
              style: CustomStyles.kTitleLarge,
            ),
            Text(
              'to be done...',
              style: CustomStyles.kBodyLarge.copyWith(color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
