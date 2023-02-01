import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_color.dart';
import '../../core/utils/app_strings.dart';
import '../../widget/item_button.dart';
import '../../widget/item_textformfield.dart';
import '../complete_employment/view.dart';

class NewCredentialsScreen extends StatelessWidget {
  const NewCredentialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 62.h,
              ),
              Center(child: Image.asset('assets/image/user(2).png')),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'New Credentials',
                style: TextStyle(
                    fontSize: 36.sp,
                    color: AppColor.myTeal,
                    fontWeight: FontWeight.bold,
                    fontFamily: AppStrings.fontCairo),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Your identity has been verified! \n  Set your new password',
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
              const ItemTextFormFiled(
                hintText: 'New password',
                secure: true,
              ),
              SizedBox(
                height: 15.h,
              ),
              const ItemTextFormFiled(
                hintText: 'Confirm password',
                secure: true,
              ),
              SizedBox(
                height: 40.h,
              ),
              const ItemButtonWidget(
                  text: 'Update', nextPage: CompleteEmploymentScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
