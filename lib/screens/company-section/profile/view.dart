import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/hiring/controle.dart';
import 'package:interview_project/screens/company-section/profile/widget/item_listtile_profile.dart';
import 'package:interview_project/screens/company-section/profile_editie/view.dart';

class CompProfileScreen extends StatelessWidget {
  CompProfileScreen({Key? key}) : super(key: key);
  final _control = CompADSControl();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: AppColor.myTeal,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Profile',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 28, myColor: const Color(0xff263238))),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  navigateTo(context, const CompProfileEditeScreen());
                },
                icon: Icon(
                  Icons.edit,
                  color: AppColor.myTeal,
                ))
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(_control.infoComp[0].image),
              ),
              Text(_control.infoComp[0].nameComp,
                  style: AppTextStyle.cairoFontSimBold(
                      fontSize: 20, myColor: AppColor.myDarkTeal)),
              Text('IT Services and IT Consulting',
                  style: AppTextStyle.cairoFontRegular(
                      fontSize: 22,
                      myColor:
                          AppColor.textColorGrayOfSubTitle.withOpacity(0.86))),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30.h, horizontal: 21.w),
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
                      text: 'About Us',
                    ),
                    Tab(
                      text: 'Overview',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CompItemListTileProfile(
                                icon: Icons.email,
                                subTitle: 'Lucidya@gmail.com',
                                title: 'Email'),
                            const CompItemListTileProfile(
                                icon: Icons.phone_android,
                                subTitle: '0507484090',
                                title: 'Phone'),
                            const CompItemListTileProfile(
                                icon: Icons.web,
                                subTitle: 'http://www.lucidya.com',
                                title: 'Website link',
                                isDivider: false),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CompItemListTileProfile(
                                icon: Icons.group,
                                subTitle: '51-200 employees',
                                title: 'Company size'),
                            const CompItemListTileProfile(
                                icon: Icons.location_pin,
                                subTitle: 'Riyadh, Riyadh',
                                title: 'Headquarters'),
                            const CompItemListTileProfile(
                                icon: Icons.push_pin_rounded,
                                subTitle: '2016',
                                title: 'Founded'),
                            const CompItemListTileProfile(
                                icon: Icons.star,
                                subTitle:
                                    'Social Media Analytics,\n Digital Media Analytics,\n and monitoring tool',
                                title: 'Specialties',
                                isDivider: false),
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
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
