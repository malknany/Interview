import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/ads/widget/overview_items.dart';
import 'package:interview_project/screens/usre-section/ads/widget/poster_ads_items.dart';
import 'package:interview_project/screens/usre-section/hiring/controler.dart';
import 'package:interview_project/widget/item_button.dart';
import 'package:quickalert/quickalert.dart';

import '../avatar/view.dart';

class ADSScreen extends StatelessWidget {
  ADSScreen({Key? key}) : super(key: key);
  final controller = HiringController();

  static showAlert(context) {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.confirm,
        borderRadius: 50.r,
        onConfirmBtnTap: () => navigateTo(context, const AvatarScreen()),
        onCancelBtnTap: () => Navigator.pop(context),
        title: 'Virtual Interview',
        cancelBtnText: 'Cancel',
        cancelBtnTextStyle: TextStyle(
          color: AppColor.textColorGray.withOpacity(0.86),
          fontSize: 20.sp,
        ),
        confirmBtnText: 'Start',
        confirmBtnTextStyle:
            AppTextStyle.eBFontMedium(fontSize: 24.sp, myColor: Colors.white),
        confirmBtnColor: AppColor.myTeal,
        animType: QuickAlertAnimType.scale,
        titleColor: AppColor.myTeal,
        text: 'Are You Ready For Virtual Interview ?',
        textColor: AppColor.textColorGray.withOpacity(0.86)
        //showCancelBtn: true,
        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
            child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 10.h),
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
                PosterADS(),
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
                    color: const Color(0xffF8F4F4),
                  ),
                  child: TabBar(
                    unselectedLabelColor: AppColor.myTeal,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColor.myTeal),
                    labelStyle: AppTextStyle.cairoFontMedium(
                        fontSize: 22.sp, myColor: AppColor.myDarkTeal),
                    tabs: const [
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
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                OverViewItems(
                                    icon: Icons.person, subTitle: '4-5 years'),
                                OverViewItems(
                                    icon: Icons.business_center_sharp,
                                    subTitle: 'Full-time'),
                                OverViewItems(
                                    icon: Icons.people,
                                    subTitle: '51-200 employees'),
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
                              'We at serv5 are looking for a graphic designer who has \n the ability to create designs that tell the stories \n of our services.\n Work requirements:\n •( creativity) \n .Technical skills:\n Well rounded in Adobe Creative Suite\n (Indesign, illustrator & photoshop).\n Company: Serv5\n Location: Mansoura\n Experience: 4-5 years\n Contact: careers@serv5group.com We at serv5 are looking for a graphic designer who has \n the ability to create designs that tell the stories \n of our services.\n Work requirements:\n •( creativity) \n .Technical skills:\n Well rounded in Adobe Creative Suite\n (Indesign, illustrator & photoshop).\n Company: Serv5\n Location: Mansoura\n Experience: 4-5 years\n Contact: careers@serv5group.com',
                              softWrap: true,
                              style: AppTextStyle.eBFontSemBold(
                                fontSize: 14.sp,
                                myColor:
                                    AppColor.textColorGray.withOpacity(0.86),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading:
                                  Icon(Icons.email, color: AppColor.myTeal),
                              title: Text(
                                'Email',
                                style: AppTextStyle.cairoFontMedium(
                                    fontSize: 23.sp, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text('Lucidya@gmail.com',
                                  style: AppTextStyle.eBFontMedium(
                                      fontSize: 20.sp,
                                      myColor: AppColor.textColorGray
                                          .withOpacity(0.86))),
                            ),
                            ListTile(
                              leading: Icon(Icons.location_on,
                                  color: AppColor.myTeal),
                              title: Text(
                                'Headquarters',
                                style: AppTextStyle.cairoFontMedium(
                                    fontSize: 23.sp, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text('cairo,Egypt',
                                  style: AppTextStyle.eBFontMedium(
                                      fontSize: 20.sp,
                                      myColor: AppColor.textColorGray
                                          .withOpacity(0.86))),
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.web_sharp, color: AppColor.myTeal),
                              title: Text(
                                'Website link',
                                style: AppTextStyle.cairoFontMedium(
                                    fontSize: 23.sp, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text('http://www.5serv.com',
                                  style: AppTextStyle.eBFontMedium(
                                      fontSize: 20.sp,
                                      myColor: AppColor.textColorGray
                                          .withOpacity(0.86))),
                            ),
                            ListTile(
                              leading: Icon(Icons.star, color: AppColor.myTeal),
                              title: Text(
                                'Specialties',
                                style: AppTextStyle.cairoFontMedium(
                                    fontSize: 23.sp, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text(
                                'Social Media Analytics,Digital Media Analytics,',
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.eBFontMedium(
                                  fontSize: 20.sp,
                                  myColor:
                                      AppColor.textColorGray.withOpacity(0.86),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0.h),
                  child: ItemButtonWidget(
                      text: 'Apply',
                      nextPage: () {
                        showAlert(context);
                      }),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
