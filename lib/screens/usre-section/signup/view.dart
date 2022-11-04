import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/core/utils/app_strings.dart';
import 'package:interview_project/screens/usre-section/login/view.dart';
import 'package:interview_project/screens/usre-section/login/widget/text_in_line.dart';
import 'package:interview_project/screens/usre-section/signup/widget/item_drob_down.dart';
import 'package:interview_project/widget/item_button.dart';

import '../../../widget/item_textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List<dynamic> list = ["Male", "Female"];
  String? dropdownValue = 'Gender';

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
                  Text(
                    'Sign up',
                    style: AppTextStyle.cairoFontBold(
                        fontSize: 48, myColor: AppColor.myTeal),
                  ),
                  Text(
                    'create a new account',
                    style: AppTextStyle.eBFontSemBold(
                        fontSize: 20, myColor: AppColor.textColorGray),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ItemTextFormFiled(
                    hintText: 'First name',
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  ItemTextFormFiled(
                    hintText: 'Last name',
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  ItemTextFormFiled(
                    hintText: 'Enter your email',
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  ItemTextFormFiled(
                    hintText: 'Password',
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  //ItemTextFormFiled(hintText: 'Gender'),
                  ItemDropDownWidget(),
                  SizedBox(
                    height: 12.h,
                  ),
                  ItemTextFormFiled(
                    hintText: 'Phone',
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  ItemButtonWidget(text: 'Register', nextPage: SizedBox()),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: AppTextStyle.eBFontBold(
                            fontSize: 20, myColor: AppColor.textColorGray),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(context, LogInScreen());
                        },
                        child: Text(
                          'login',
                          style: TextStyle(
                            fontFamily: AppStrings.fontEB,
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
                  TextInLine(),
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
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}








////