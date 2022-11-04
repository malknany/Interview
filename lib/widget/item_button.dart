import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';

import '../core/utils/app_color.dart';
class ItemButtonWidget extends StatelessWidget {
  const ItemButtonWidget({Key? key,required this.text,required this.nextPage}) : super(key: key);
  final String text;
  final Widget nextPage;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        navigateTo(context, nextPage);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.myTeal,
          fixedSize: Size(376.w, 70.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          )),
      child: Text(
        text,
        style: AppTextStyle.cairoFontSimBold(fontSize: 36,myColor: Colors.white),
      ),
    );
  }
}
