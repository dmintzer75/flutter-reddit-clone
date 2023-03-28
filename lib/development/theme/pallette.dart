import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Pallete {
  // Colors
  static const blackColor = Color.fromRGBO(1, 1, 1, 1); // primary color
  static const greyColor = Color.fromRGBO(26, 39, 45, 1); // secondary color
  static const drawerColor = Color.fromRGBO(18, 18, 18, 1);
  static const whiteColor = Colors.white;
  static final orangeColor = Color(0xffFC4500);
  static var redColor = Colors.red.shade500;
  static var blueColor = Colors.blue.shade300;

  // Themes
  static var darkModeAppTheme = ThemeData.dark().copyWith(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: orangeColor),
    scaffoldBackgroundColor: blackColor,
    cardColor: greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: drawerColor,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: drawerColor,
    ),
    primaryColor: redColor,
  );

  static var lightModeAppTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    scaffoldBackgroundColor: whiteColor,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
    cardColor: greyColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: whiteColor,
      elevation: 1,
      iconTheme: IconThemeData(
        color: blackColor,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: whiteColor,
    ),
    primaryColor: redColor,
  );
}

class ThemeNotifier extends StateNotifier<ThemeData> {
  final ThemeMode _mode;

  ThemeNotifier({ThemeMode mode = ThemeMode.light})
      : _mode = mode,
        super(Pallete.lightModeAppTheme);
  void getTheme() async {}

  void toggleTheme() async {}
}
