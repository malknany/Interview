import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/text_style.dart';
import '../../../../core/utils/app_color.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.only(left: 17.w, top: 9.h, bottom: 14.h, right: 18.w),
        suffixIcon: Icon(
          Icons.search,
          color: AppColor.myTeal,
        ),
        // need app font eb regule here
        hintText: hintText,
        hintStyle: AppTextStyle.eBFontMedium(
          fontSize: 16.sp,
          myColor: const Color(0xff585252),
        ),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColor.myTeal,
            width: 1.w,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColor.myTeal,
            width: 1.w,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
      ),
    );
  }
}
