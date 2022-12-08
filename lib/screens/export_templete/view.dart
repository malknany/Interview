import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/screens/edit_templete/view.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../../widget/item_button.dart';

class ExportTempleteScreen extends StatelessWidget {
  const ExportTempleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            'assets/image/Group 2.png',
            height: 490,
            width: 410,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Easy to Export',
            textAlign: TextAlign.start,
            style: AppTextStyle.cairoFontMedium(
              fontSize: 29,
              myColor: AppColor.myTeal,
            ),
          ),
          Text(
            'You can download your cv as a pdf and keep \n it on your device',
            textAlign: TextAlign.center,
            style: AppTextStyle.eBFontMedium(
              fontSize: 19,
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
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                    color: AppColor.circularContainer, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 9.w,
              ),
              Container(
                width: 22,
                height: 22,
                decoration:
                    BoxDecoration(color: AppColor.myTeal, shape: BoxShape.circle),
              ),
              SizedBox(
                width: 9.w,
              ),
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                    color: AppColor.circularContainer, shape: BoxShape.circle),
              ),
            ],
          ),
          SizedBox(
            height: 30.w,
          ),
          const ItemButtonWidget(text: 'Next', nextPage: EditTempleteScreen()),
        ]),
      ),
    );
  }
}
