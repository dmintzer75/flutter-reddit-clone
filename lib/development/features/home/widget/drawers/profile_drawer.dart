import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/features/auth/controller/auth_controller.dart';
import 'package:flutter_reddit_clone/development/theme/custom_styles.dart';
import 'package:flutter_reddit_clone/development/theme/pallette.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileDrawer extends ConsumerWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    void logout(WidgetRef ref) {
      ref.read(authControllerProvider.notifier).logout();
    }

    void toggleTheme(WidgetRef ref) {
      ref.read(themeNotifierProvider.notifier).toggleTheme();
    }

    bool isLightMode =
        ref.watch(themeNotifierProvider.notifier).mode == ThemeMode.light;
    return SafeArea(
      bottom: false,
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                child: Text(
                  user!.name.substring(0, 2).toUpperCase(),
                  style: CustomStyles.kDisplayLarge,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'u/${user.name}',
                style: CustomStyles.kTitleMedium,
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),
              ListTile(
                tileColor: Pallete.greyColor.withOpacity(0.05),
                splashColor: Pallete.orangeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                title: Text(
                  "My Profile",
                  style: CustomStyles.kTitleSmall,
                ),
                leading: const Icon(Icons.person),
                onTap: () {
                  // Navigator.of(context).pop();
                  // navigateToCreateCommunity(context);
                },
              ),
              const SizedBox(height: 10),
              ListTile(
                tileColor: Pallete.greyColor.withOpacity(0.05),
                splashColor: Pallete.orangeColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                title: Text(
                  "Log Out",
                  style: CustomStyles.kTitleSmall,
                ),
                leading: const Icon(Icons.logout),
                onTap: () => logout(ref),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  isLightMode
                      ? const Text('Light Mode Active')
                      : const Text('Dark Mode Active'),
                  const SizedBox(width: 10),
                  Switch.adaptive(
                    value: ref.watch(themeNotifierProvider.notifier).mode ==
                        ThemeMode.light,
                    onChanged: (value) => toggleTheme(ref),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
