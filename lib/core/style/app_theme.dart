import 'package:flutter/material.dart';
import 'package:interview_project/core/utils/app_color.dart';

ThemeData appTheme() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: AppColor.textColorGray.withOpacity(0.5)),
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColor.myTeal,
  );
}
