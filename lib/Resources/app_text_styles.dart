import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const String fontFamily = 'Grand Hotel';

  static const TextStyle pinkColor40Normal = TextStyle(
    fontFamily: fontFamily,
    color: AppColors.PinkColor, fontSize: 40, fontWeight: FontWeight.w400,);

  static const TextStyle pinkColor20Normal = TextStyle(
    color: AppColors.PinkColor, fontSize: 22, fontWeight: FontWeight.bold,);


  static const TextStyle normal = TextStyle(
    color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400,);

}