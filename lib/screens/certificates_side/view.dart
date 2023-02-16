import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../../widget/item_button.dart';
import '../../widget/item_textformfield.dart';
import '../complete_resume/view.dart';

class CertificatesSideScreen extends StatelessWidget {
  const CertificatesSideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(

              children: [
            const Icon(Icons.arrow_back_ios_new, color: Colors.teal),
            // TODO:  Add InkWell Here After Navigation
            SizedBox(width: 105.w),

            Text(
              'Your Resume ',
              textAlign: TextAlign.center,
              style: AppTextStyle.cairoFontBold(
                fontSize: 24,
                myColor: AppColor.myTeal,
              ),
            ),
          ]),
          SizedBox(
            height: 170.h,
          ),
          Text(
            'Certificates',
            textAlign: TextAlign.start,
            style: AppTextStyle.cairoFontBold(
              fontSize: 24,
              myColor: AppColor.myTeal,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          ItemTextFormFiled(
            suffixIcon: IconButton(
              icon: const Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.blueGrey,
                size: 30,
              ),
              onPressed: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ToDo: Inkwell add another language
              Container(
                width: 26,
                height: 26,
                decoration: BoxDecoration(
                    color: AppColor.myTeal, shape: BoxShape.circle),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                'add another certificates ',
                textAlign: TextAlign.start,
                style: AppTextStyle.cairoFontMedium(
                  fontSize: 20,
                  myColor: AppColor.myTeal,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13.h,
          ),
          Text(
            'Certificate period',
            textAlign: TextAlign.start,
            style: AppTextStyle.cairoFontBold(
              fontSize: 24,
              myColor: AppColor.myTeal,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          ItemTextFormFiled(

            suffixIcon: IconButton(
              icon: const Icon(
                Icons.calendar_month,
                color: Colors.teal,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Lnik for your own projects',
            textAlign: TextAlign.start,
            style: AppTextStyle.cairoFontBold(
              fontSize: 24,
              myColor: AppColor.myTeal,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const ItemTextFormFiled(),
          SizedBox(
            height: 5.h,
          ),
          Text(
            'Description',
            textAlign: TextAlign.start,
            style: AppTextStyle.cairoFontBold(
              fontSize: 24,
              myColor: AppColor.myTeal,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          const ItemTextFormFiled(

          ),
          SizedBox(
            height: 50.h,
          ),
          const ItemButtonWidget(text: 'Finish', nextPage: CompleteResumeScreen()),

        ]),
      ),
    ));
  }
}
