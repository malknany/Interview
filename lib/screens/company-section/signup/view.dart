import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/core/utils/app_strings.dart';
import 'package:interview_project/screens/company-section/login/view.dart';
import 'package:interview_project/screens/company-section/login/widget/text_in_line.dart';
import 'package:interview_project/screens/company-section/upload_photo/view.dart';
import 'package:interview_project/widget/item_button.dart';
import 'package:interview_project/widget/item_drob_down.dart';

import '../../../widget/item_textformfield.dart';

class CompSignUpScreen extends StatefulWidget {
  const CompSignUpScreen({Key? key}) : super(key: key);

  @override
  State<CompSignUpScreen> createState() => _CompSignUpScreenState();
}

class _CompSignUpScreenState extends State<CompSignUpScreen> {
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
                      fontSize: 48,
                      myColor: AppColor.myTeal,
                    ),
                  ),
                  Text(
                    'create a new account',
                    style: AppTextStyle.cairoFontMedium(
                      fontSize: 18,
                      myColor: AppColor.textColorGray,
                    ),
                  ),
                  const ItemTextFormFiled(
                    hintText: 'User name',
                  ),
                  const ItemTextFormFiled(
                    hintText: 'E-mail',
                  ),
                  const ItemTextFormFiled(
                    hintText: 'Password',
                  ),
                  const ItemDropDownWidget(hintText: 'Location', listOfName: [
                    "Cairo",
                    "Alexandria",
                    "Gizeh",
                    "Port Said",
                    "Suez",
                    "Luxor",
                    "Al-Mansura",
                    "El-Mahalla El-Kubra",
                    "Tanta",
                    "	Asyut"
                  ],),
                  const ItemTextFormFiled(
                    hintText: 'Phone',
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  ItemButtonWidget(
                      text: 'Register',
                      nextPage: () {
                        navigateTo(context,const CompUpLoadPhotoScreen());
                      }),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: AppTextStyle.cairoFontRegular(
                            fontSize: 20, myColor: AppColor.textColorGray),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateTo(context, const CompLogInScreen());
                        },
                        child: Text(
                          'login',
                          style: TextStyle(
                            fontFamily: AppStrings.fontCairo,
                            fontSize: 20.sp,
                            color: AppColor.textColorGray,
                            fontWeight: FontWeight.w700,
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
                  const  CompTextInLine(),
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
