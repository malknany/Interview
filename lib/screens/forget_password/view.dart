import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/utils/app_color.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_strings.dart';
import '../../widget/item_button.dart';
import '../../widget/item_textformfield.dart';
import '../varification/view.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Center(child: Image.asset('assets/image/user(2).png')),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Forget Password',
                style: TextStyle(
                    fontSize: 36.sp,
                    color: AppColor.myTeal,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppStrings.fontCairo),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Provide your account’s email for\n which you want to reset your\n password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColor.myGraySubTitle,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppStrings.fontCairo,
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              ItemTextFormFiled(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      'assets/image/flag.png',
                      width: 20.w,
                      height: 20.h,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Colors.blueGrey,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                  hintText: 'Egypt (+20)'),
              SizedBox(
                height: 41.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    hintStyle: AppTextStyle.eBFontSemBold(
                        fontSize: 22.sp, myColor: AppColor.textFiledColor)),
              ),
              SizedBox(
                height: 30.h,
              ),
              const ItemButtonWidget(text: 'Next', nextPage: VarificationScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
