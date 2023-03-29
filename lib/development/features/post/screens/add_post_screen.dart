import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/theme/custom_styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPostScreen extends ConsumerWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      height: double.infinity,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Add Post Screen',
            style: CustomStyles.kDisplayMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'To be done...',
            style: CustomStyles.kDisplaySmall,
          ),
        ],
      ),
    );
  }
}
