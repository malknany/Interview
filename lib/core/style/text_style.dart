import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_strings.dart';

class AppTextStyle {
  static TextStyle cairoFontSimBold(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
        fontFamily: AppStrings.fontCairo,
        fontSize: fontSize.sp,
        color: myColor,
        fontWeight: FontWeight.w800);
  }

  static TextStyle cairoFontBold(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
      color: myColor,
      fontSize: fontSize.sp,
      fontWeight: FontWeight.bold,
      fontFamily: AppStrings.fontCairo,
    );
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

  static TextStyle eBFontMedium(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
      fontWeight: FontWeight.w700,
      fontFamily: AppStrings.fontEB,
      fontSize: fontSize.sp,
      color: myColor,
    );
  }

  static TextStyle eBFontSemBold(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
      fontWeight: FontWeight.w800,
      fontFamily: AppStrings.fontEB,
      fontSize: fontSize.sp,
      color: myColor,
    );
  }

  static TextStyle eBFontRegular(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: AppStrings.fontEB,
      fontSize: fontSize.sp,
      color: myColor,
    );
  }

  static TextStyle eBFontBold(
      {required double fontSize, required Color myColor}) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontFamily: AppStrings.fontEB,
      fontSize: fontSize.sp,
      color: myColor,
    );
  }
}
