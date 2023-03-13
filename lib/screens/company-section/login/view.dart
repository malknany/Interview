import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/login/widget/text_in_line.dart';
import 'package:interview_project/screens/company-section/signup/view.dart';
import 'package:interview_project/widget/item_button.dart';

import '../../../widget/item_textformfield.dart';

class CompLogInScreen extends StatefulWidget {
  const CompLogInScreen({Key? key}) : super(key: key);

  @override
  State<CompLogInScreen> createState() => _CompLogInScreenState();
}

class _CompLogInScreenState extends State<CompLogInScreen> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Image.asset('assets/image/login.png'),
                SizedBox(
                  height: 24.8.h,
                ),
                const ItemTextFormFiled(hintText: 'enter your email'),
                SizedBox(
                  height: 29.h,
                ),
                const ItemTextFormFiled(hintText: 'password'),
                SizedBox(
                  height: 13.h,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkBox,
                      onChanged: (_) {
                        checkBox = !checkBox;
                        setState(() {});
                      },
                      activeColor: AppColor.myTeal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.r),
                          side: BorderSide(color: AppColor.borderTextFiled,),),
                    ),
                    Text(
                      'Keep me logged in ',
                      // 16 textLoginColor
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 16, myColor: AppColor.textLoginColor),
                    ),
                    const Spacer(),
                    Text(
                      'Forget password?',
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 16, myColor: AppColor.textLoginColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                ItemButtonWidget(text: 'Login', nextPage: () {}),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 20, myColor: AppColor.textColorGray),
                    ),
                    SizedBox(
                      width: 11.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context,const CompSignUpScreen());
                      },
                      child: Text(
                        'sign up',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColor.textColorGray,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.textColorGray,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                const CompTextInLine(),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/image/google.png',
                      width: 55.w,
                      height: 60.h,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Image.asset(
                      'assets/image/facebook.png',
                      width: 74.w,
                      height: 68.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}