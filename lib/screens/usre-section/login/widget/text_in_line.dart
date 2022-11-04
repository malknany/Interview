import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_strings.dart';
class TextInLine extends StatelessWidget {
  const TextInLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Divider(
            color: AppColor.myLightTeal,
            thickness: 2.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 9.0.w),
          child: Text(
            'or continue with',
            style: TextStyle(
                fontFamily: AppStrings.fontEB,
                fontSize: 20.sp,
                color: AppColor.textColorGray,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColor.myLightTeal,
            thickness: 2.w,
          ),
        ),
      ],
    );
  }
}
