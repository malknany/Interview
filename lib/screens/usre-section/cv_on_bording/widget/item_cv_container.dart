import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/cv_on_bording/controle.dart';

class ItemCvContainer extends StatelessWidget {
  ItemCvContainer({Key? key, required this.index}) : super(key: key);
  final int index;
  final CvOnBoardingControl _control = CvOnBoardingControl();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 214.h,
      width: 148.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          width: 1,
          color: const Color(0xffE0E0E0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 5.h),
            child: Image.asset(_control.item[index].image),
          ),
          Text(
            _control.item[index].subTitle1,
            style: AppTextStyle.cairoFontMedium(
                fontSize: 20, myColor: AppColor.myTeal),
          ),
        ],
      ),
    );
  }
}
