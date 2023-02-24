import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/accepted/control.dart';
import 'package:interview_project/screens/company-section/accepted/widget/item_container.dart';

class AcceptedScreen extends StatelessWidget {
  AcceptedScreen({Key? key}) : super(key: key);

  final _acceptedControl = AcceptedControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  width: double.infinity,
                  height: 212.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        offset: const Offset(2, 4),
                        blurRadius: 2,
                      )
                    ],
                    border: Border.all(
                      width: 2.w,
                      color: const Color(0xffE0E0E0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Virtual Interview Result',
                        style: AppTextStyle.cairoFontSimBold(
                          fontSize: 24,
                          myColor: AppColor.myTeal,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.people,
                                color: AppColor.myTeal,
                                size: 45,
                              ),
                              Text(
                                'All Subscribers',
                                style: AppTextStyle.cairoFontBold(
                                  fontSize: 18,
                                  myColor: AppColor.textColorGrayOfSubTitle
                                      .withOpacity(0.86),
                                ),
                              ),
                              Text(
                                '200',
                                style: AppTextStyle.cairoFontBold(
                                  fontSize: 24,
                                  myColor: AppColor.myTeal,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.settings_accessibility,
                                color: AppColor.myTeal,
                                size: 45,
                              ),
                              Text(
                                'Succeed',
                                style: AppTextStyle.cairoFontBold(
                                  fontSize: 18,
                                  myColor: AppColor.textColorGrayOfSubTitle
                                      .withOpacity(0.86),
                                ),
                              ),
                              Text(
                                '120',
                                style: AppTextStyle.cairoFontBold(
                                  fontSize: 24,
                                  myColor: AppColor.myTeal,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.no_accounts,
                                color: AppColor.myTeal,
                                size: 45,
                              ),
                              Text(
                                'Not succeed',
                                style: AppTextStyle.cairoFontBold(
                                  fontSize: 18,
                                  myColor: AppColor.textColorGrayOfSubTitle
                                      .withOpacity(0.86),
                                ),
                              ),
                              Text(
                                '80',
                                style: AppTextStyle.cairoFontBold(
                                  fontSize: 24,
                                  myColor: AppColor.myTeal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Flutter Developer ',
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 20, myColor: AppColor.myTeal),
                    ),
                    Text(
                      'View All',
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 18, myColor: AppColor.myTeal),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 120.h,
                  child: ListView(
                      reverse: true,
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        _acceptedControl.item.length,
                        (index) => ItemContainerAccepted(
                          image: _acceptedControl.item[index].image,
                          text: _acceptedControl.item[index].name,
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Front End ',
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 20, myColor: AppColor.myTeal),
                    ),
                    Text(
                      'View All',
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 18, myColor: AppColor.myTeal),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  height: 120.h,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        _acceptedControl.item.length,
                        (index) => ItemContainerAccepted(
                          image: _acceptedControl.item[index].image,
                          text: _acceptedControl.item[index].name,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
