import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/hiring/controle.dart';
class CompPosterADS extends StatelessWidget {
  CompPosterADS({Key? key}) : super(key: key);
  final controller = CompADSControl();

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
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 45.h, bottom: 10.h),
                    child: Text(
                      controller.infoComp[0].title,
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 20, myColor: AppColor.myTeal),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            controller.infoComp[0].nameComp,
                            textAlign: TextAlign.center,
                            style: AppTextStyle.cairoFontSimBold(
                              fontSize: 15,
                              myColor: AppColor.textColorGray.withOpacity(0.86),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            controller.infoComp[0].location,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.cairoFontSimBold(
                              fontSize: 14,
                              myColor: AppColor.textColorGray.withOpacity(0.86),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            controller.infoComp[0].time,
                            style: AppTextStyle.cairoFontSimBold(
                              fontSize: 15,
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
                DecorationImage(image: AssetImage(controller.infoComp[0].image)),
                border: Border.all(
                    color: const Color(0xffE0E0E0),
                    width: 1.w,
                    strokeAlign: BorderSide.strokeAlignInside
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
