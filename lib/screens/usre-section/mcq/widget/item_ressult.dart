import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
class ItemContainer extends StatelessWidget {
  const ItemContainer({Key? key,required this.title,required this.numberResult,required this.padding}) : super(key: key);
  final String title,numberResult;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: const Color(0xff969595),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            offset: const Offset(4, 8),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyle.cairoFontBold(
                fontSize: 20, myColor: AppColor.myTeal),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            numberResult,
            style: AppTextStyle.cairoFontBold(
                fontSize: 20, myColor: AppColor.myTeal),
          ),
        ],
      ),
    );
  }
}
