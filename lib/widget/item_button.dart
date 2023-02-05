import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';

import '../core/utils/app_color.dart';

class ItemButtonWidget extends StatelessWidget {
  const ItemButtonWidget({Key? key, required this.text, required this.nextPage})
      : super(key: key);
  final String text;
  final void Function() nextPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: nextPage,
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.myTeal,
          fixedSize: Size(376.w, 75.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          )),
      child: Center(
        child: Text(
          text,
          style: AppTextStyle.cairoFontSimBold(
              fontSize: 36, myColor: Colors.white),
        ),
      ),
    );
  }
}
