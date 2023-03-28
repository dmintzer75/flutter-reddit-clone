import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_reddit_clone/development/features/auth/screens/login_screen.dart';
import 'package:flutter_reddit_clone/development/features/home/screens/home_screen.dart';

// loggedOut
final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

// loggedIn

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
});
