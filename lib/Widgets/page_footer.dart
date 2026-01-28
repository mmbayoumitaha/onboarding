
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
      mainAxisAlignment: pageIndex != 2 ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
      children: [
        Visibility(
          visible: pageIndex == 2,
          child: Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.PinkColor,

                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  minimumSize: Size(300, 65),

                    ),
                onPressed: (){},
                child: Text('Get Started' ,
                  style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),)),
          )
        ),
        Visibility(
          visible: pageIndex != 2,
          child: TextButton(
            onPressed: onPrevPressed,
            child: Text(
              'Skip'.padRight(11, ' '),
              style: AppTextStyles.pinkColor20Normal,
            ),
          ),
        ),
        Visibility(
          visible: pageIndex != 2,
          child: SizedBox(
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
        ),
        Visibility(
          visible: pageIndex != 2,
          child: TextButton(
            onPressed: onNextPressed,
            child: Text(
              'Next'.padRight(5, ' '),
              style: AppTextStyles.pinkColor20Normal,
            ),
          ),
        ),
      ],
    );
  }
}
