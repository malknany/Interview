import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/controle.dart';
class CustomContainerOfLearning extends StatelessWidget {
   CustomContainerOfLearning({Key? key}) : super(key: key);
  final LearningController controller=LearningController();
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 9.w,
      runSpacing: 29.h,
      children: List.generate(controller.Learn.length, (index) => GestureDetector(
        onTap:(){
          navigateTo(context, controller.Learn[index].nextPage??SizedBox());
        },
        child: Container(
          height: 240.h,
          width: 199.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(
              color: Color(0xffE0E0E0),
              width: 1.w,
              strokeAlign: StrokeAlign.inside
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
              Expanded(flex: 3,child: Image.asset('${controller.Learn[index].image}',),),
              Expanded(child: Padding(
                padding:  EdgeInsets.symmetric(vertical: 12.0.h),
                child: Text(controller.Learn[index].subTitle.toString(),textAlign: TextAlign.center,style: AppTextStyle.eBFontBold(fontSize: 14.sp, myColor: AppColor.textColorGrayOfSubTitle)),
              ),)
            ],
          ),
        ),
      ),)
    );
  }
}
