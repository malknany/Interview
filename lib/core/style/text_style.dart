import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_strings.dart';

class AppTextStyle {
  static TextStyle cairoFontLight(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
        fontFamily: AppStrings.fontCairo,
        fontSize: fontSize.sp,
        color: myColor,
        fontWeight: FontWeight.w300);
  }

  static TextStyle cairoFontRegular(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
        fontFamily: AppStrings.fontCairo,
        fontSize: fontSize.sp,
        color: myColor,
        fontWeight: FontWeight.w400);
  }

  static TextStyle cairoFontMedium(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: AppStrings.fontCairo,
      color: myColor,
      fontSize: fontSize.sp,
    );
  }

  static TextStyle cairoFontSimBold(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
        fontFamily: AppStrings.fontCairo,
        fontSize: fontSize.sp,
        color: myColor,
        fontWeight: FontWeight.w600);
  }

  static TextStyle cairoFontBold(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
      color: myColor,
      fontSize: fontSize.sp,
      fontWeight: FontWeight.w700,
      fontFamily: AppStrings.fontCairo,
    );
  }


}
