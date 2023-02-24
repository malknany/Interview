import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class ItemContainerAccepted extends StatelessWidget {
  const ItemContainerAccepted(
      {Key? key, required this.image, required this.text})
      : super(key: key);
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 50.h, width: 50.w, child: Image.asset(image)),
          SizedBox(
            height: 10.h,
          ),
          Text(
            text,
            style: AppTextStyle.cairoFontSimBold(
                fontSize: 14,
                myColor: AppColor.myGraySubTitle.withOpacity(0.86)),
          ),
        ],
      ),
    );
  }
}
