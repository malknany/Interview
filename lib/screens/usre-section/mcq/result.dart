import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage/view.dart';
import 'package:interview_project/screens/usre-section/mcq/controlle.dart';
import 'package:interview_project/screens/usre-section/mcq/widget/item_ressult.dart';
import 'package:interview_project/widget/item_button.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, required this.score, required this.quiz})
      : super(key: key);
  final int score, quiz;
  final QuestionControl _control = QuestionControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Round Result',
                  style: AppTextStyle.cairoFontMedium(
                      fontSize: 20, myColor: AppColor.myTeal),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'GOOD JOB KEEP IT UP!',
                  style: AppTextStyle.cairoFontSimBold(
                      fontSize: 26,
                      myColor: AppColor.textColorGrayOfSubTitle),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Image.asset('assets/image/result.png'),
                Text(
                    '${((score / _control.questionLength(quiz)) * 100).floor()}%',
                    style: AppTextStyle.cairoFontBold(
                        fontSize: 36, myColor: AppColor.myDarkTeal)),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemContainer(
                        padding: 14,
                        title: 'Total',
                        numberResult: '${_control.questionLength(quiz)}'),
                    ItemContainer(
                        padding: 12,
                        title: 'Right',
                        numberResult: '$score'),
                    ItemContainer(
                        padding: 10,
                        title: 'Wrong',
                        numberResult:
                            '${_control.questionLength(quiz) - score}'),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                ItemButtonWidget(
                    text: 'Finish',
                    nextPage: () {
                      navigateToAndRemoveUntil(
                        context,
                        page: const HomePageScreen(),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
