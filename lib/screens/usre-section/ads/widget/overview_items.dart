import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/text_style.dart';
import '../../../../core/utils/app_color.dart';

class OverViewItems extends StatelessWidget {
  const OverViewItems({Key? key, required this.icon, required this.subTitle})
      : super(key: key);

  final IconData icon;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 14.h),
          height: 62.h,
          width: 66.w,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                offset: const Offset(4, 8),
                blurRadius: 4,
              ),
            ],
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xffE0E0E0),
              width: 1.w,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
          ),
          child: Center(
            child: Icon(icon, color: AppColor.myTeal),
          ),
        ),
        Text(
          subTitle,
          style: AppTextStyle.cairoFontSimBold(
              fontSize: 15, myColor: AppColor.textColorGray),
        ),
      ],
    );
  }
}
