import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/utils/app_strings.dart';
import 'package:interview_project/screens/splash/view.dart';

import 'core/style/app_theme.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => MaterialApp(
        theme: appTheme(),
        title: AppStrings.nameApp,
        debugShowCheckedModeBanner: false,
        home: child,
      ),
      // splash in main
      child: const SplashScreen(),
    ),
  );
}
