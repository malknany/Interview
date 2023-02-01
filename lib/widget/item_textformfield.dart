import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';

import '../core/utils/app_color.dart';

class ItemTextFormFiled extends StatelessWidget {
  const ItemTextFormFiled({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            offset: const Offset(2, 4),
            blurRadius: 2,
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.r),
                borderSide: BorderSide(
                    strokeAlign: BorderSide.strokeAlignInside,
                    width: 1.w,
                    color: AppColor.myTeal)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                    strokeAlign: BorderSide.strokeAlignInside,
                    width: 1.w,
                    color: AppColor.borderTextFiled)),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsets.only(left: 30.w, top: 15.h, bottom: 15.h),
            hintText: hintText,
            hintStyle: AppTextStyle.cairoFontBold(
                fontSize: 20, myColor: AppColor.textFiledColor)),
      ),
    );
  }
}
