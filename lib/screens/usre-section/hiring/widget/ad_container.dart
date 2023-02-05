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
    return InkWell(
      onTap: () => navigateTo(context, ADSScreen()),
      child: Container(
        margin: EdgeInsets.only(bottom: 30.h),
        height: 177.h,
        width: double.infinity,
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
                Expanded(
                  child: SizedBox(
                      width: 76.w,
                      height: 76.h,
                      child: Image.asset(controller.ads[0].image)),
                ),
              ],
            ),
            SizedBox(
              width: 235.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(controller.ads[0].textTitle,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.cairoFontBold(
                            fontSize: 18,
                            myColor: AppColor.myDarkTealTitle)),
                  ),
                  Expanded(
                    child: Text(
                      controller.ads[0].nameCompany,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.cairoFontSimBold(
                        fontSize: 15,
                        myColor: Colors.black.withOpacity(0.73),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(controller.ads[0].location,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.cairoFontSimBold(
                          fontSize: 14,
                          myColor: Colors.black.withOpacity(0.73),
                        ),
                        textAlign: TextAlign.start),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Expanded(
                        child:  Icon(
                          Icons.lightbulb,
                          color: Color(0xff18DAD0),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Text(
                          'Your profile matches this job',
                          style: AppTextStyle.cairoFontSimBold(
                            fontSize: 13,
                            myColor: const Color(0xff15553F),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.bookmark,
                    color: Color(0xff0C948D),
                  ),
                  const Spacer(flex: 3,),
                  Expanded(
                    child: Text(
                      controller.ads[0].time,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.cairoFontBold(
                        fontSize: 14,
                        myColor: const Color(0xff349792),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
