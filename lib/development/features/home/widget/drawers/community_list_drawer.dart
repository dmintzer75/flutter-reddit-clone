import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/routes/router.dart';
import 'package:flutter_reddit_clone/development/theme/custom_styles.dart';
import 'package:routemaster/routemaster.dart';

class CommunityListDrawer extends StatelessWidget {
  const CommunityListDrawer({super.key});
  void navigateToCreateCommunity(BuildContext context) {
    Routemaster.of(context).push(RouteNames.createCommunity);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Create a community",
                  style: CustomStyles.kTitleMedium,
                ),
                leading: const Icon(Icons.add),
                onTap: () {
                  Navigator.of(context).pop();
                  navigateToCreateCommunity(context);
                },
              ),
              const Divider(),
              const SizedBox(height: 20),
              const Text(
                'No communities added yet...',
                style: TextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
