import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/controle.dart';

class CustomContainerOfLearning extends StatelessWidget {
  CustomContainerOfLearning({Key? key}) : super(key: key);
  final LearningController controller = LearningController();

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 9.w,
        runSpacing: 29.h,
        children: List.generate(
          controller.learn.length,
          (index) => GestureDetector(
            onTap: () {
              navigateTo(context, controller.learn[index].nextPage);
            },
            child: Container(
              height: 240.h,
              width: 199.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: const Color(0xffE0E0E0),
                    width: 1.w,
                    strokeAlign: BorderSide.strokeAlignInside),
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
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      '${controller.learn[index].image}',
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0.h),
                      child: Text(controller.learn[index].subTitle.toString(),
                          textAlign: TextAlign.center,
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 14,
                              myColor: AppColor.textColorGrayOfSubTitle)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
