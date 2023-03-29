import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/theme/pallette.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../constants/constants.dart';
import '../../../models/subreddit.dart';
import '../../../theme/custom_styles.dart';

class SubCard extends ConsumerWidget {
  const SubCard({required this.sub, super.key});

  final Subreddit? sub;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeNotifierProvider);
    bool isLightMode =
        ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.light;
    return FadeIn(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: currentTheme.drawerTheme.backgroundColor,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 16,
                                  backgroundImage: NetworkImage(sub!.thumbnail),
                                ),
                                const SizedBox(width: 8),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        sub!.subredditNamePrefixed,
                                        style: CustomStyles.kTitleMedium,
                                      ),
                                      Text(
                                        sub!.authorFullname,
                                        style: CustomStyles.kBodySmall,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Text(sub!.title, style: CustomStyles.kTitleSmall),
                            const SizedBox(height: 40),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.arrow_circle_up_outlined,
                                          size: 25),
                                    ),
                                    Text(
                                      '${sub!.ups}',
                                      style: CustomStyles.kBodySmall,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.arrow_circle_down_outlined,
                                          size: 25),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 20),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.comment, size: 25),
                                    ),
                                    Text(
                                      '${sub!.numComments}',
                                      style: CustomStyles.kBodySmall,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Card(
//       child: ListTile(
//         // leading: CircleAvatar(backgroundImage: sub!),
//         title: Text(
//           sub!.title,
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//     );