import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/constants/constants.dart';
import 'package:flutter_reddit_clone/development/features/auth/controller/auth_controller.dart';
import 'package:flutter_reddit_clone/development/features/home/widget/drawers/community_list_drawer.dart';
import 'package:flutter_reddit_clone/development/features/home/widget/drawers/profile_drawer.dart';
import 'package:flutter_reddit_clone/development/models/subreddit.dart';
import 'package:flutter_reddit_clone/development/theme/pallette.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/widgets/loader.dart';

import '../widget/home_widgets.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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

  void displayDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void displayEndDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider)!;
    bool isLightMode =
        ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.light;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
        leading: Builder(
          builder: (BuildContext context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => displayDrawer(context),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          Builder(
            builder: (context) {
              return IconButton(
                icon: CircleAvatar(
                  backgroundImage: NetworkImage(user.profilePic),
                ),
                onPressed: () => displayEndDrawer(context),
              );
            },
          ),
          const SizedBox(width: 4)
        ],
      ),
      drawer: const CommunityListDrawer(),
      endDrawer: const ProfileDrawer(),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: isLightMode ? null : Pallete.drawerColor,
        activeColor: isLightMode ? Pallete.orangeColor : Pallete.whiteColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.add)),
        ],
        onTap: onPageChanged,
        currentIndex: _page,
      ),
      body: Constants.tabWidgets[_page],
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

// Column(
//         children: [
//           Expanded(
//             child: FutureBuilder(
//               future: subsFuture,
//               initialData: subsFuture,
//               builder: (BuildContext context, AsyncSnapshot snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return const Loader();
//                 } else if (snapshot.hasError) {
//                   return HomeWidgets.refreshIndicator();
//                 } else if (snapshot.hasData) {
//                   final subs = snapshot.data!;
//                   return HomeWidgets.buildSubs(subs);
//                 } else {
//                   return HomeWidgets.noData();
//                 }
//               },
//             ),
//           ),
//         ],
//       ),