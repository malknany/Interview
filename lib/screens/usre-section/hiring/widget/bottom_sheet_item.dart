import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/screens/usre-section/hiring/widget/searsh_item.dart';
import 'package:interview_project/widget/item_button.dart';
import '../../../../core/style/text_style.dart';
import '../../../../core/utils/app_color.dart';
import '../controler.dart';
class ShowBottomSheetScreen extends StatefulWidget {
   const ShowBottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<ShowBottomSheetScreen> createState() => _ShowBottomSheetScreenState();
}

class _ShowBottomSheetScreenState extends State<ShowBottomSheetScreen> {
  final HiringController controller = HiringController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 840.h,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 25.0.w, right: 130.w),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.clear,
                    color: AppColor.myTeal,
                  ),
                ),
              ),
              Text(
                'Filters',
                style: AppTextStyle.cairoFontBold(
                    fontSize: 26.sp,
                    myColor: AppColor.myDarkTealTitle),
              ),
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 21.0.w),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 30.0.h),
                    child: Text(
                      'Employment Type',
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 24.sp,
                          myColor: AppColor.myDarkTealTitle),
                    ),
                  ),
                  Wrap(
                    runSpacing: 19.w,
                    spacing: 14.h,
                    children: List.generate(
                      controller.text.length,
                          (index) => GestureDetector(
                        onTap: () {
                          controller
                              .text[index].isSelect =
                          !controller
                              .text[index].isSelect;
                          setState(() {});
                        },
                        child: Container(
                          height: 43.h,
                          width: 115.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.25),
                                offset: const Offset(2, 4),
                                blurRadius: 2,)
                            ],
                            borderRadius:
                            BorderRadius.circular(
                                10.r),
                            color: controller
                                .text[index].isSelect
                                ? AppColor.myTeal
                                : Colors.white,
                            border: Border.all(
                              color: AppColor.myTeal,
                              width: 1.w,
                              strokeAlign:
                              StrokeAlign.inside,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              controller.text[index]
                                  .employmentType,
                              style: AppTextStyle.eBFontBold(
                                  fontSize: 20.sp,
                                  myColor: controller
                                      .text[index]
                                      .isSelect
                                      ? Colors.white
                                      : AppColor
                                      .textColorGrayOfEMType),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 30.0.h),
                    child: Text(
                      'Location',
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 24.sp,
                          myColor: AppColor.myDarkTealTitle),
                    ),
                  ),
                  SizedBox(
                    height: 44.h,
                    child: SearchItem(hintText: 'Search for city'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 30.0.w),
                    child: Text('Job Title',
                        style: AppTextStyle.cairoFontBold(
                            fontSize: 24.sp,
                            myColor: AppColor
                                .myDarkTealTitle)),
                  ),
                  Wrap(
                    runSpacing: 19.w,
                    spacing: 14.h,
                    children: List.generate(
                      controller.jobTitles.length,
                          (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.jobTitles[index]
                                .isSelect =
                            !controller
                                .jobTitles[index]
                                .isSelect;
                          });
                        },
                        child: Container(
                          height: 43.h,
                          width: 120.w,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.25),
                                offset: const Offset(2, 4),
                                blurRadius: 2,)
                            ],
                            borderRadius:
                            BorderRadius.circular(
                              10.r,),
                            color: controller
                                .jobTitles[index].isSelect
                                ? AppColor.myTeal
                                : Colors.white,
                            border: Border.all(
                              color: AppColor.myTeal,
                              width: 1.w,
                              strokeAlign:
                              StrokeAlign.inside,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              controller.jobTitles[index]
                                  .jobTitle,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle.eBFontBold(
                                  fontSize: 20.sp,
                                  myColor: controller
                                      .jobTitles[index]
                                      .isSelect
                                      ? Colors.white
                                      : AppColor
                                      .textColorGrayOfEMType),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  ItemButtonWidget(text: 'Apply', nextPage: (){}),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
