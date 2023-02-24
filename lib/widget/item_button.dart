import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';

import '../core/utils/app_color.dart';

class ItemButtonWidget extends StatelessWidget {
  const ItemButtonWidget(
      {Key? key,
      required this.text,
      required this.nextPage,
      this.width = 376,
      this.height = 75,
      this.sizeFont = 36})
      : super(key: key);
  final String text;
  final void Function() nextPage;
  final double width, height, sizeFont;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: nextPage,
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.myTeal,
          fixedSize: Size(width.w, height.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          )),
      child: Center(
        child: Text(
          text,
          style: AppTextStyle.cairoFontSimBold(
              fontSize: sizeFont, myColor: Colors.white),
        ),
      ),
    );
  }
}
