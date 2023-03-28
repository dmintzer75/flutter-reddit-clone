import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/features/auth/controller/auth_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  dynamic posts;
  @override
  void initState() {
    super.initState();
    getSubreddit();
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider)!;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.exit_to_app),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getSubreddit();
        },
        child: Icon(Icons.refresh),
      ),
      body: Center(
        child: Text(
          user.karma.toString(),
        ),
      ),
    );
  }

  Future<void> getSubreddit() async {
    final response = await Dio().get('https://api.reddit.com/r/pics/hot.json');
    posts = response.data;
    print(response);
  }
}
