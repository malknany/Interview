import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

// ignore: must_be_immutable
class ListTileItem extends StatelessWidget {
  ListTileItem(
      {Key? key,
      required this.title,
      required this.numberQustion,
      required this.nextPage})
      : super(key: key);
  String? title, numberQustion;
  Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15.h),
      height: 88.h,
      width: 352.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            offset: const Offset(4, 8),
            blurRadius: 4,
          ),
        ],
        color: Colors.white,
        border: Border.all(
          color: const Color(0xffE0E0E0),
        ),
      ),
      child: ListTile(
        leading: Image.asset('assets/image/iconSlackHashtag.png', width: 50),
        title: Text(
          '$title MCQ',
          style: AppTextStyle.cairoFontSimBold(
              fontSize: 24.sp, myColor: AppColor.textColorGrayOfSubTitle),
        ),
        subtitle: Text(
          '$numberQustion Qastions',
          style: AppTextStyle.eBFontRegular(
              fontSize: 18.sp, myColor: AppColor.textColorGrayOfSubTitle),
        ),
        onTap: () {
          navigateTo(context, nextPage);
        },
      ),
    );
  }
}
