import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/ads_info_comp/view.dart';
import 'package:interview_project/screens/company-section/hiring/controle.dart';

class CompADS extends StatelessWidget {
  CompADS({Key? key, required this.index}) : super(key: key);
  final int index;

  final controller = CompADSControl();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.0.h),
      child: InkWell(
        onTap: () => navigateTo(context, CompADSInfoScreen()),
        child: Container(
          height: 129.h,
          width: 383.w,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: const Color(0xffE0E0E0),
                width: 1.w,
                strokeAlign: BorderSide.strokeAlignInside),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 60.w,
                  height: 76.h,
                  child: Image.asset(controller.infoComp[index].image),
                ),
              ),
              SizedBox(
                width: 235.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0.h),
                      child: Text(controller.infoComp[index].title,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 18, myColor: AppColor.myDarkTealTitle)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.0.h),
                      child: Text(
                        controller.infoComp[index].nameComp,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.cairoFontBold(
                          fontSize: 15,
                          myColor: Colors.black.withOpacity(0.73),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 11.0.h),
                      child: Text(controller.infoComp[index].location,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.cairoFontSimBold(
                            fontSize: 13,
                            myColor: Colors.black.withOpacity(0.73),
                          ),
                          textAlign: TextAlign.start),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.delete,
                      color: Color(0xff0C948D),
                    ),
                    Text(
                      controller.infoComp[index].time,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.cairoFontBold(
                        fontSize: 13,
                        myColor: const Color(0xff349792),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 76.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
