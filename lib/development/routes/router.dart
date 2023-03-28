import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_reddit_clone/development/features/community/screens/create_community_screen.dart';
import 'package:flutter_reddit_clone/development/features/auth/screens/login_screen.dart';
import 'package:flutter_reddit_clone/development/features/home/screens/home_screen.dart';

class RouteNames {
  static String home = '/';
  static String createCommunity = '/create-community';
}

// loggedOut
final loggedOutRoute = RouteMap(
  routes: {
    RouteNames.home: (_) => const MaterialPage(child: LoginScreen()),
  },
);

// loggedIn
final loggedInRoute = RouteMap(
  routes: {
    RouteNames.home: (_) => const MaterialPage(child: HomeScreen()),
    RouteNames.createCommunity: (_) =>
        const MaterialPage(child: CreateCommunityScreen()),
  },
);
