import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../../widget/item_button.dart';
import '../personal_side/view.dart';

class EditTempleteScreen extends StatelessWidget {
  const EditTempleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset(
            'assets/image/Group 3.png',
            height: 570,
            width: 420,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            'Easy to Edit',
            textAlign: TextAlign.start,
            style: AppTextStyle.cairoFontMedium(
              fontSize: 29,
              myColor: AppColor.myTeal,
            ),
          ),
          Text(
            'You can easily modify your data',
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
            ],
          ),
          SizedBox(
            height: 25.w,
          ),
          const ItemButtonWidget(text: 'Get Start', nextPage: PersonalSideScreen()),
        ]),
      ),
    );
  }
}
