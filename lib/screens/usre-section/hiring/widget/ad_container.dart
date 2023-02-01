import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/ads/view.dart';
import 'package:interview_project/screens/usre-section/hiring/controler.dart';

import '../../../../core/style/text_style.dart';

class ADContainer extends StatelessWidget {
  ADContainer({Key? key}) : super(key: key);

  final controller = HiringController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30.0.h),
      child: InkWell(
        onTap: () => navigateTo(context, ADSScreen()),
        child: Container(
          height: 170.h,
          width: 384.w,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: AppColor.myTeal,
              width: 1.w,
              strokeAlign: BorderSide.strokeAlignInside
            ),
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                offset: const Offset(4, 8),
                blurRadius: 4,
              )
            ],
          ),
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                      width: 60.w,
                      height: 76.h,
                      child: Image.asset(controller.ads[0].image)),
                  const Spacer(),
                ],
              ),
              SizedBox(
                width: 235.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0.h),
                      child: Text(controller.ads[0].textTitle,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 18.sp,
                              myColor: AppColor.myDarkTealTitle)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 3.0.h),
                      child: Text(
                        controller.ads[0].nameCompany,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.eBFontSemBold(
                          fontSize: 15.sp,
                          myColor: Colors.black.withOpacity(0.73),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 11.0),
                      child: Text(controller.ads[0].location,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.eBFontSemBold(
                            fontSize: 13.sp,
                            myColor: Colors.black.withOpacity(0.73),
                          ),
                          textAlign: TextAlign.start),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.lightbulb,
                          color: Color(0xff18DAD0),
                        ),
                        SizedBox(
                          width: 5.3.w,
                        ),
                        Text(
                          'Your profile matches this job',
                          style: AppTextStyle.eBFontSemBold(
                            fontSize: 13.sp,
                            myColor: const Color(0xff15553F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.bookmark,
                      color: Color(0xff0C948D),
                    ),
                    const Spacer(),
                    Text(
                      controller.ads[0].time,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.eBFontBold(
                        fontSize: 14.sp,
                        myColor: const Color(0xff349792),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
