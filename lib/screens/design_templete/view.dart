import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../../widget/item_button.dart';
import '../export_templete/view.dart';

class DesignTempleteScreen extends StatelessWidget {
  const DesignTempleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            'assets/image/Group 1.png',
            height: 572.h,
            width:450.w,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Well Designed Template',
            textAlign: TextAlign.start,
            style: AppTextStyle.cairoFontMedium(
              fontSize: 29.sp,
              myColor: AppColor.myTeal,
            ),
          ),
          Text(
            'You can choose the shape you like and we will \n design it for you according to your data ',
            textAlign: TextAlign.center,
            style: AppTextStyle.eBFontMedium(
              fontSize: 19.sp,
              myColor: AppColor.textColorGray,
            ),
          ),
          SizedBox(
            height: 70.h,
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 22.w,
                height: 22.h,
                decoration:
                    BoxDecoration(color: AppColor.myTeal, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 9.w,
              ),
              Container(
                width: 22.w,
                height: 22.h,
                decoration: BoxDecoration(
                    color: AppColor.circularContainer, shape: BoxShape.circle),
              ),
              SizedBox(
               width: 9.w,
              ),
              Container(
                width: 22.w,
                height: 22.h,
                decoration: BoxDecoration(
                    color: AppColor.circularContainer, shape: BoxShape.circle),
              ),

            ],
          ),

          SizedBox(
            height: 13.w,
          ),
          const ItemButtonWidget(text: 'Next', nextPage:ExportTempleteScreen ()),
        ]),
      ),
    );
  }
}
