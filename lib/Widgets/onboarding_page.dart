import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constance/app_ui_constants.dart';
import '../Resources/app_text_styles.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.pageIndex});
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(AppUiConstants.onboardingPages[pageIndex].image),
        SizedBox(height: 30),
        Text(
          AppUiConstants.onboardingPages[pageIndex].title,
          style: AppTextStyles.pinkColor40Normal,
        ),
        SizedBox(height: 10),
        Text(
          AppUiConstants.onboardingPages[pageIndex].description,
          textAlign: TextAlign.center,
          style: AppTextStyles.normal,
        ),
      ],
    );
  }
}
