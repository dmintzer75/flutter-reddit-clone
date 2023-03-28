import 'package:flutter/material.dart';

import 'development/dev_app.dart';

class App extends StatelessWidget {
  const App({required this.flavor, super.key});
  final String flavor;

  @override
  Widget build(BuildContext context) {
    if (flavor == 'Development') {
      return const DevApp();
    } else {
      return MaterialApp(
        title: "reddit clone",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(flavor),
          ),
        ),
      );
    }
  }
}
