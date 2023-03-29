import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/subreddit.dart';
import '../../../shared/widgets/loader.dart';
import '../../../theme/custom_styles.dart';
import '../../../theme/pallette.dart';
import '../../home/widget/home_widgets.dart';

class FeedScreen extends ConsumerStatefulWidget {
  const FeedScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FeedScreenState();
}

class _FeedScreenState extends ConsumerState<FeedScreen> {
  Subreddit? subreddit;
  Future<List<Subreddit?>>? subsFuture;
  bool isLoading = false;
  int _page = 0;

  @override
  void initState() {
    subsFuture = getSubs();
    Future.delayed(Duration(milliseconds: 1000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isLightMode =
        ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.light;
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: subsFuture,
                initialData: subsFuture,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Loader();
                  } else if (snapshot.hasError) {
                    return HomeWidgets.refreshIndicator();
                  } else if (snapshot.hasData) {
                    final subs = snapshot.data!;
                    return HomeWidgets.buildSubs(subs);
                  } else {
                    return HomeWidgets.noData();
                  }
                },
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: FloatingActionButton(
            backgroundColor:
                isLightMode ? Pallete.orangeColor : Pallete.drawerColor,
            foregroundColor: Pallete.whiteColor,
            onPressed: () {
              subsFuture = getSubs();
              setState(() {});
            },
            child: const Icon(Icons.refresh),
          ),
        ),
      ],
    );
  }

  Future<List<Subreddit?>> getSubs() async {
    List<Subreddit?> listSubs = [];
    final response = await Dio().get('https://api.reddit.com/r/pics/hot.json');

    final listData = response.data['data']['children'];

    for (var i = 0; i < listData.length; i++) {
      listSubs.add(Subreddit.fromJson(listData[i]['data']));
    }
    setState(() {});
    return listSubs;
  }
}

// class FeedScreen extends ConsumerWidget {
//   const FeedScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Column(
//       children: [
//         Text(
//           'Feed Screen',
//           style: CustomStyles.kDisplayLarge,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Text(
//           'To be done...',
//           style: CustomStyles.kDisplayMedium,
//         ),
//       ],
//     );
//   }
// }
