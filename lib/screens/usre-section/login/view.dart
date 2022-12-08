import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/login/widget/text_in_line.dart';
import 'package:interview_project/screens/usre-section/signup/view.dart';
import 'package:interview_project/widget/item_button.dart';

import '../../../widget/item_textformfield.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                  height: 30.8.h,
                ),
                const ItemTextFormFiled(hintText: 'enter your email'),
                SizedBox(
                  height: 35.h,
                ),
                const ItemTextFormFiled(hintText: 'password'),
                SizedBox(
                  height: 19.h,
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
                          side: BorderSide(color: AppColor.borderTextFiled)),
                    ),
                    Text(
                      'Keep me logged in ',
                      // 16 textLoginColor
                      style: AppTextStyle.eBFontSemBold(
                          fontSize: 16, myColor: AppColor.textLoginColor),
                    ),
                    const Spacer(),
                    Text(
                      'Forget password?',
                      style: AppTextStyle.eBFontSemBold(
                          fontSize: 16, myColor: AppColor.textLoginColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                const ItemButtonWidget(text: 'Login', nextPage: SizedBox()),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account?",
                      // 20 textColorGray bold eb
                      style: AppTextStyle.eBFontBold(
                          fontSize: 20, myColor: AppColor.textColorGray),
                    ),
                    SizedBox(
                      width: 11.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const SignUpScreen());
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
                const TextInLine(),
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
