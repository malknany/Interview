import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/signup/view.dart';
import '../../login/view.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            navigateTo(context, const LogInScreen());
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(143.w, 48.h),
              backgroundColor: AppColor.myTeal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r),),
              )
          ),
          child: Text(
            'Login',
            style: AppTextStyle.cairoFontMedium(fontSize: 20, myColor: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            navigateTo(context, const SignUpScreen());
          },
          style: ElevatedButton.styleFrom(
              fixedSize: Size(143.w, 48.h),
              backgroundColor: AppColor.myTeal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.r),),
              )),
          child: Text(
            'Sign up',
            style: AppTextStyle.cairoFontMedium(fontSize: 20, myColor: Colors.white),
          ),
        ),
      ],
    );
  }
}
