import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:interview_project/core/app-rout/navigate.dart';

import '../choose_account/view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 6),
      () {
        navigateAndPop(context, const ChooseAccountScreen());
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Center(
              child: SvgPicture.asset(
            width: 200.w,
            height: 200.h,
            'assets/image/logo.svg',
            //alignment: Alignment.center,
          )),
        ),
      ),
    );
  }
}
