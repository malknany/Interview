import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/mcq/quize.dart';
import 'package:interview_project/screens/usre-section/mcq/widget/item_list_tile.dart';

class MCQScreen extends StatelessWidget {
  const MCQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent Traning',
                style: AppTextStyle.cairoFontMedium(
                    fontSize: 24,
                    myColor: AppColor.textColorGrayOfSubTitle)),
            ListTileItem(
              title: 'Flutter',
              numberQustion: '10/10',
              nextPage: const QuizFlutter(quiz: 1),
            ),
            ListTileItem(
              title: 'HTML',
              numberQustion: '7/7',
              nextPage: const QuizFlutter(quiz: 2),
            ),
            ListTileItem(
              title: 'CSS',
              numberQustion: '5/5',
              nextPage: const QuizFlutter(quiz: 3),
            ),
          ],
        ),
      ),
    );
  }
}
