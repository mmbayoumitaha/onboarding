
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/Resources/app_text_styles.dart';

import '../Constance/app_ui_constants.dart';
import '../Resources/app_colors.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({
    super.key,
    required this.pageIndex,
    required this.onPrevPressed,
    required this.onNextPressed,
  });

  final int pageIndex;
  final VoidCallback onPrevPressed;
  final VoidCallback onNextPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Visibility(
          visible: pageIndex != 2,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: TextButton(
            onPressed: onPrevPressed,
            child: Text(
              'Skip'.padRight(11, ' '),
              style: AppTextStyles.pinkColor40Normal,
            ),
          ),
        ),
        SizedBox(
          width: 80,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: AppUiConstants.onboardingPages
                .map(
                  (e) => AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.easeIn,
                width:
                pageIndex == AppUiConstants.onboardingPages.indexOf(e)
                    ? 40
                    : 10,
                height: 10,
                decoration: BoxDecoration(
                  color:
                  pageIndex == AppUiConstants.onboardingPages.indexOf(e)
                      ? AppColors.PinkColor
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
                .toList(),
          ),
        ),
        Visibility(
          visible: pageIndex != 2,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: TextButton(
            onPressed: onPrevPressed,
            child: Text(
              'Next'.padRight(11, ' '),
              style: AppTextStyles.pinkColor40Normal,
            ),
          ),
        ),
      ],
    );
  }
}
