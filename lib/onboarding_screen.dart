import 'package:flutter/material.dart';

import 'Constance/app_ui_constants.dart';
import 'Widgets/onboarding_page.dart';
import 'Widgets/page_footer.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OnboardingPage(pageIndex: pageIndex),
              PageFooter(
                pageIndex: pageIndex,
                onPrevPressed: () {
                  if (pageIndex == 0) {
                    //navigate to home
                  } else {
                    setState(() {
                      pageIndex--;
                    });
                  }
                },
                onNextPressed: () {
                  if (pageIndex == AppUiConstants.onboardingPages.length - 1) {
                    //navigate to home
                  } else {
                    setState(() {
                      pageIndex++;
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
