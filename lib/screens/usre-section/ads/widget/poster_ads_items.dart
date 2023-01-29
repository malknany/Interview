import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

import '../../hiring/controler.dart';

class PosterADS extends StatelessWidget {
  PosterADS({Key? key}) : super(key: key);
  final controller = HiringController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215.h,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 352.w,
              height: 167.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.25),
                    offset: const Offset(4, 8),
                    blurRadius: 4,
                  ),
                ],
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                  width: 1.w,
                  strokeAlign: StrokeAlign.inside,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 57.h, bottom: 18.h),
                    child: Text(
                      controller.ads[0].textTitle,
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 20.sp, myColor: AppColor.myTeal),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            controller.ads[0].nameCompany,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.eBFontSemBold(
                              fontSize: 17.sp,
                              myColor: AppColor.textColorGray.withOpacity(0.86),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            controller.ads[0].location,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.eBFontSemBold(
                              fontSize: 11.sp,
                              myColor: AppColor.textColorGray.withOpacity(0.86),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            controller.ads[0].time,
                            style: AppTextStyle.eBFontSemBold(
                              fontSize: 17.sp,
                              myColor: AppColor.textColorGray.withOpacity(0.86),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 91.w,
              height: 92.h,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(controller.ads[0].image)),
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                  width: 1.w,
                  strokeAlign: StrokeAlign.inside,
                ),
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
