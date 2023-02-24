import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/choose_account/widget/item_container.dart';
import 'package:interview_project/screens/company-section/on_bording/view.dart';

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
                style: AppTextStyle.cairoFontBold(
                  fontSize: 28,
                  myColor: AppColor.myTeal,
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              const ItemContainer(
                  image: 'assets/image/user.png',
                  text: 'USER',
                  nextPage: OnBoardingScreen()),
              SizedBox(
                height: 36.h,
              ),
              const ItemContainer(
                image: 'assets/image/company.png',
                text: 'COMPANY',
                nextPage: CompOnBoardingScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
