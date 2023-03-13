import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';

import '../../../../core/utils/app_color.dart';

class CompTextInLine extends StatelessWidget {
  const CompTextInLine({Key? key}) : super(key: key);

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
            style: AppTextStyle.cairoFontBold(
                fontSize: 20, myColor: AppColor.textColorGrayOfEMType,),
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
