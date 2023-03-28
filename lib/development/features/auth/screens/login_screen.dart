// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/theme/pallette.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_reddit_clone/development/constants/assets.dart';
import 'package:flutter_reddit_clone/development/features/auth/controller/auth_controller.dart';
import 'package:flutter_reddit_clone/development/shared/widgets/loader.dart';
import 'package:flutter_reddit_clone/development/shared/widgets/sign_in_button.dart';
import 'package:flutter_reddit_clone/development/theme/custom_styles.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(authControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Assets.assetsImagesLogo,
          height: 40,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Skip',
              style: CustomStyles.kLabelLarge,
            ),
          )
        ],
      ),
      body: isLoading
          ? const Loader()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Text(
                  "Reddit Clone",
                  style: CustomStyles.kHeadlineSmall
                      .copyWith(color: Pallete.orangeColor, fontSize: 16),
                ),
                Text(
                  'Ride into anything',
                  style: CustomStyles.kHeadlineMedium,
                ),
                const SizedBox(height: 40),
                Container(
                  height: 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Pallete.orangeColor,
                  ),
                  child: Image.asset(
                    Assets.assetsImagesLogoDragon,
                    height: 400,
                  ),
                ),
                const SizedBox(height: 40),
                const SignInButton()
              ],
            ),
    );
  }
}
