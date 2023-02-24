import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';

import '../../../core/utils/app_color.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer(
      {Key? key,
      required this.image,
      required this.text,
      required this.nextPage})
      : super(key: key);

  final String text, image;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateAndPop(context, nextPage);
      },
      child: Container(
        padding: EdgeInsets.only(left: 54.w, right: 75.w),
        width: 340.w,
        height: 83.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColor.myTeal,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: const Offset(4, 8),
                blurRadius: 5)
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 67.29.h,
              width: 65.80.w,
              child: Image.asset(image),
            ),
            Text(
              text,
              style: AppTextStyle.cairoFontMedium(
                fontSize: 24,
                myColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
