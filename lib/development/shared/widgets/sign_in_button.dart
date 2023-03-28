import 'package:flutter/material.dart';
import 'package:flutter_reddit_clone/development/constants/assets.dart';
import 'package:flutter_reddit_clone/development/features/auth/controller/auth_controller.dart';
import 'package:flutter_reddit_clone/development/theme/custom_styles.dart';
import 'package:flutter_reddit_clone/development/theme/pallette.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// USING RIVERPOD
class SignInButton extends ConsumerWidget {
  const SignInButton({super.key});

  void signInWithGoogle(BuildContext context, WidgetRef ref) {
    ref.read(authControllerProvider.notifier).signInWithGoogle(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: ElevatedButton.icon(
        onPressed: () => signInWithGoogle(context, ref),
        icon: Image.asset(
          Assets.assetsImagesGoogle,
          width: 35,
        ),
        label: Text(
          "Continue with Google",
          style: CustomStyles.kTitleMedium,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Pallete.greyColor,
          minimumSize: const Size(double.infinity, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
