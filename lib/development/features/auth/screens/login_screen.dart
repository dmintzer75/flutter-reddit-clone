// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
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
              children: [
                const SizedBox(height: 30),
                Text(
                  'Dive into anything',
                  style: CustomStyles.kHeadlineSmall,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    Assets.assetsImagesLoginEmote,
                    height: 400,
                  ),
                ),
                const SignInButton()
              ],
            ),
    );
  }
}
