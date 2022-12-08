import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_color.dart';
import '../../core/utils/app_strings.dart';
import '../../widget/item_button.dart';
import '../new_credentials/view.dart';

class VarificationScreen extends StatelessWidget {
  const VarificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(children: [
                  SizedBox(
                    height: 62.h,
                  ),
                  Center(child: Image.asset('assets/image/user(2).png')),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    'Code Verification',
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
                    'Enter one time password sent on \n +201009506621',
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
                  Row(children: [
                    Image.asset('assets/image/Rectangle 10.png'),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset('assets/image/Rectangle 10.png'),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset('assets/image/Rectangle 10.png'),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset('assets/image/Rectangle 10.png'),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset('assets/image/Rectangle 10.png'),
                    SizedBox(
                      width: 5.w,
                    ),
                    Image.asset('assets/image/Rectangle 10.png'),
                  ]),
                  SizedBox(
                    height: 76.h,
                  ),
                  const ItemButtonWidget(
                      text: 'Varify Code', nextPage: NewCredentialsScreen()),
                ]))));
  }
}
