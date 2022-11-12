import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/ads/widget/overview_items.dart';
import 'package:interview_project/screens/usre-section/hiring/controler.dart';
import 'package:interview_project/widget/item_button.dart';

class ADSScreen extends StatelessWidget {
  ADSScreen({Key? key}) : super(key: key);
  final controller = HiringController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.0.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColor.myTeal,
                      ),
                    ),
                    Icon(
                      Icons.bookmark_outlined,
                      color: AppColor.myTeal,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
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
                              color: Color(0xffE0E0E0),
                              width: 1.w,
                              strokeAlign: StrokeAlign.inside,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 57.h, bottom: 18.h),
                                child: Text(
                                  controller.ads[0].textTitle,
                                  style: AppTextStyle.cairoFontBold(
                                      fontSize: 20.sp,
                                      myColor: AppColor.myTeal),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 15.5.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.ads[0].nameCompany,
                                      textAlign: TextAlign.center,
                                      style: AppTextStyle.eBFontSemBold(
                                        fontSize: 17.sp,
                                        myColor: AppColor.textColorGray
                                            .withOpacity(0.86),
                                      ),
                                    ),
                                    Text(
                                      controller.ads[0].location,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyle.eBFontSemBold(
                                        fontSize: 11.sp,
                                        myColor: AppColor.textColorGray
                                            .withOpacity(0.86),
                                      ),
                                    ),
                                    Text(
                                      controller.ads[0].time,
                                      style: AppTextStyle.eBFontSemBold(
                                        fontSize: 17.sp,
                                        myColor: AppColor.textColorGray
                                            .withOpacity(0.86),
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
                            image: DecorationImage(
                                image: AssetImage(controller.ads[0].image)),
                            border: Border.all(
                              color: Color(0xffE0E0E0),
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
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30.h),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        offset: const Offset(4, 8),
                        blurRadius: 4,
                      )
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                    color: Color(0xffF8F4F4),
                  ),
                  child: TabBar(
                    unselectedLabelColor: AppColor.myTeal,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColor.myTeal),
                    labelStyle: AppTextStyle.cairoFontMedium(
                        fontSize: 22.sp, myColor: AppColor.myDarkTeal),
                    tabs: [
                      Tab(
                        text: 'Overview',
                      ),
                      Tab(
                        text: 'Company',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  //height: 420.h,
                  child: TabBarView(children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              OverViewItems(icon: Icons.person, subTitle: '4-5 years'),
                              OverViewItems(icon: Icons.business_center_sharp, subTitle: 'Full-time'),
                              OverViewItems(icon: Icons.people, subTitle: '51-200 employees'),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0.h),
                            child: Text('Requriments',
                                style: AppTextStyle.cairoFontBold(
                                    fontSize: 24.sp,
                                    myColor: AppColor.myDarkTeal)),
                          ),
                          Text(
                            'We at serv5 are looking for a graphic designer who has \n the ability to create designs that tell the stories \n of our services.\n Work requirements:\n •( creativity) \n .Technical skills:\n Well rounded in Adobe Creative Suite\n (Indesign, illustrator & photoshop).\n Company: Serv5\n Location: Mansoura\n Experience: 4-5 years\n Contact: careers@serv5group.com',
                            style: AppTextStyle.eBFontSemBold(
                              fontSize: 14.sp,
                              myColor: AppColor.textColorGray.withOpacity(0.86),
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          ItemButtonWidget(text: 'Apply', nextPage: (){}),
                          SizedBox(height: 20.h,),
                        ],
                      ),
                    ),
                    SizedBox(),
                  ]),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
