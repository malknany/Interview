import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class TextFiledProfile extends StatelessWidget {
  String label;

  TextFiledProfile({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 26.w, vertical: 17.5.h),
      height: 49.h,
      decoration: BoxDecoration(
        border: Border.all(width: 2,color: Color(0xffE0E0E0),),
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: Color(0xffE0E0E0),
            offset: const Offset(2, 4),
            blurRadius: 2,
          ),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.only(top: 7.h, bottom: 16.h, left: 32.w),
          hintText: label,
          hintStyle: AppTextStyle.eBFontRegular(
              fontSize: 20.sp, myColor: AppColor.myTeal,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            borderSide: BorderSide.none
          ),
        ),
      ),
    );
  }
}
// 508953