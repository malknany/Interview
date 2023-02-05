import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/login/view.dart';
import 'package:interview_project/screens/company-section/signup/view.dart';


class CompButtonWidget extends StatelessWidget {
  const CompButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            navigateTo(context, const CompLogInScreen());
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(143.w, 48.h),
              backgroundColor: AppColor.myTeal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              )),
          child: Text(
            'Login',
            style: AppTextStyle.cairoFontLight(
                fontSize: 20, myColor: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            navigateAndPop(context,const CompSignUpScreen());
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(143.w, 48.h),
              backgroundColor: AppColor.myTeal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.r),
                ),
              )),
          child: Text(
            'Sign up',
            style: AppTextStyle.cairoFontLight(
                fontSize: 20, myColor: Colors.white),
          ),
        ),
      ],
    );
  }
}
