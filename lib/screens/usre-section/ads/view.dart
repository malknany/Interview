import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app_alert/alert.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/ads/widget/overview_items.dart';
import 'package:interview_project/screens/usre-section/ads/widget/poster_ads_items.dart';
import 'package:interview_project/screens/usre-section/hiring/controler.dart';
import 'package:interview_project/screens/usre-section/hiring/widget/list_tile_user.dart';
import 'package:interview_project/widget/item_button.dart';

import '../avatar/view.dart';

class ADSScreen extends StatelessWidget {
  ADSScreen({Key? key}) : super(key: key);
  final controller = HiringController();


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: AppColor.myTeal,
          actions: [
            Icon(
              Icons.bookmark_outlined,
              color: AppColor.myTeal,
            ),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 10.h),
        child: Column(
          children: [
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
                          style: AppTextStyle.cairoFontSimBold(
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
                        const ItemListTileUser(title: 'Email', subTitle: 'Lucidya@gmail.com', icon:Icons.email),
                        const ItemListTileUser(title: 'Headquarters', subTitle: 'cairo,Egypt', icon:Icons.location_on),
                        const ItemListTileUser(title: 'Website link', subTitle: 'http://www.5serv.com', icon:Icons.web_sharp),
                        const ItemListTileUser(title: 'Specialties', subTitle: 'Social Media Analytics,Digital Media Analytics,', icon:Icons.star),
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
                    ShowAlert.showAlertConfirm(context, const AvatarScreen());
                  }),
            ),
          ],
        ),
          ),
        ),
      ),
    );
  }
}
