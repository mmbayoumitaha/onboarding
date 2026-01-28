import 'package:flutter/material.dart';
import 'package:onboarding/Resources/app_colors.dart';
import 'package:onboarding/onboarding_screen.dart';

class OnboardingApp extends StatelessWidget {
  const OnboardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : OnboardingScreen(),
      theme: ThemeData(scaffoldBackgroundColor: AppColors.whiteColor),
    );
  }
}
