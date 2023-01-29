import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/image/password.png'),
              Text('Forget Password',
                  style: AppTextStyle.cairoFontBold(
                      fontSize: 36, myColor: AppColor.myTeal)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: Text(
                    'Provide your account’s email for which you want to reset your password',
                    style: AppTextStyle.cairoFontBold(
                        fontSize: 36, myColor: AppColor.myTeal)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
