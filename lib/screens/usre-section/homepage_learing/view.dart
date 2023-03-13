import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/widget/continar_learing.dart';

class HomePageLearningScreen extends StatelessWidget {
  const HomePageLearningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 50.0.h, top: 7.h),
              child: Text(
                'Categories',
                style: AppTextStyle.cairoFontBold(
                  fontSize: 26,
                  myColor: AppColor.textColorGrayOfTitle,
                ),
              ),
            ),
            CustomContainerOfLearning(),
          ],
        ),
      ),
    );
  }
}
