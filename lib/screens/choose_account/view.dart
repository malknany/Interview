import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/core/utils/app_strings.dart';
import 'package:interview_project/screens/choose_account/widget/item_container.dart';

import '../usre-section/on_bording/view.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 64.h,
              ),
              Image.asset('assets/image/choose_account.png'),
              SizedBox(
                height: 27.55.h,
              ),
              Text(
                'Choose Your Account',
                style: TextStyle(
                    fontSize: 28.sp,
                    color: AppColor.myTeal,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppStrings.fontCairo),
              ),
              SizedBox(
                height: 28.h,
              ),
              const ItemContainer(
                  image: 'assets/image/user.png',
                  text: 'USER',
                  width: 75,
                  nextPage: OnBoardingScreen()),
              SizedBox(
                height: 36.h,
              ),
              ItemContainer(
                image: 'assets/image/company.png',
                text: 'COMPANY',
                width: 19,
                nextPage: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
