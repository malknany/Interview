import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/add_advertisment/view.dart';
import 'package:interview_project/screens/company-section/ads_info_comp/widget/item_poster_comp.dart';
import 'package:interview_project/screens/company-section/hiring/controle.dart';
import 'package:interview_project/screens/usre-section/ads/widget/overview_items.dart';

class CompADSInfoScreen extends StatelessWidget {
  CompADSInfoScreen({Key? key}) : super(key: key);
  final controller = CompADSControl();

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
                    IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: AppColor.myTeal,
                      ),
                      onPressed: () =>
                          navigateTo(context, const CompAddAdvertisementScreen()),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                CompPosterADS(),
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
                        fontSize: 22, myColor: AppColor.myDarkTeal),
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
                                      fontSize: 24,
                                      myColor: AppColor.myDarkTeal)),
                            ),
                            Text(
                              'We at serv5 are looking for a graphic designer who has \n the ability to create designs that tell the stories \n of our services.\n Work requirements:\n •( creativity) \n .Technical skills:\n Well rounded in Adobe Creative Suite\n (Indesign, illustrator & photoshop).\n Company: Serv5\n Location: Mansoura\n Experience: 4-5 years\n Contact: careers@serv5group.com We at serv5 are looking for a graphic designer who has \n the ability to create designs that tell the stories \n of our services.\n Work requirements:\n •( creativity) \n .Technical skills:\n Well rounded in Adobe Creative Suite\n (Indesign, illustrator & photoshop).\n Company: Serv5\n Location: Mansoura\n Experience: 4-5 years\n Contact: careers@serv5group.com',
                              softWrap: true,
                              style: AppTextStyle.cairoFontRegular(
                                fontSize: 14,
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
                                    fontSize: 23, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text('Lucidya@gmail.com',
                                  style: AppTextStyle.cairoFontRegular(
                                      fontSize: 20,
                                      myColor: AppColor.textColorGray
                                          .withOpacity(0.86))),
                            ),
                            ListTile(
                              leading: Icon(Icons.location_on,
                                  color: AppColor.myTeal),
                              title: Text(
                                'Headquarters',
                                style: AppTextStyle.cairoFontMedium(
                                    fontSize: 23, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text('cairo,Egypt',
                                  style: AppTextStyle.cairoFontRegular(
                                      fontSize: 20,
                                      myColor: AppColor.textColorGray
                                          .withOpacity(0.86))),
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.web_sharp, color: AppColor.myTeal),
                              title: Text(
                                'Website link',
                                style: AppTextStyle.cairoFontMedium(
                                    fontSize: 23, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text('http://www.5serv.com',
                                  style: AppTextStyle.cairoFontRegular(
                                      fontSize: 20,
                                      myColor: AppColor.textColorGray
                                          .withOpacity(0.86))),
                            ),
                            ListTile(
                              leading: Icon(Icons.star, color: AppColor.myTeal),
                              title: Text(
                                'Specialties',
                                style: AppTextStyle.cairoFontMedium(
                                    fontSize: 23, myColor: AppColor.myTeal),
                              ),
                              subtitle: Text(
                                'Social Media Analytics,Digital Media Analytics,',
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.cairoFontRegular(
                                  fontSize: 20,
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
              ],
            ),
          ),
        )),
      ),
    );
  }
}
