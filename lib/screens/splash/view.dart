import 'dart:async';

import 'package:flutter/material.dart';
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
    Timer(const Duration(seconds: 5), () {
      navigateTo(context, const ChooseAccountScreen());
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Center(child: Image.asset('assets/image/logo.png',alignment: Alignment.center,)),
        ),
      ),
    );
  }
}
