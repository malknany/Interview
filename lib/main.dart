import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/utils/app_strings.dart';
import 'package:interview_project/screens/splash/view.dart';
import 'package:interview_project/screens/usre-section/signup/view.dart';

import 'core/app-rout/navigate.dart';
import 'core/themes/app_theme.dart';

void main(){
  runApp(
    ScreenUtilInit(
      designSize: Size(428, 926),
     builder: (context, child) => MaterialApp(
       theme: appTheme(),
       title: AppStrings.nameApp,
       debugShowCheckedModeBanner: false,
       navigatorKey: navigateKey,
       home: child,
     ),
      child: SignUpScreen(),
    ),
    );
}