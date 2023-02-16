import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/screens/all_pages/first_page.dart';
import 'package:interview_project/screens/all_pages/second_page.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../all_pages/fourth_page.dart';
import '../all_pages/third_page.dart';

class AllTempletesScreen extends StatelessWidget {
  const AllTempletesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset('assets/image/user profile image.png'),
                SizedBox(
                  width: 100.w,
                ),
                Text(
                  'Choose Cv  ',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 24,
                    myColor: AppColor.textColorGray,
                  ),
                ),
                SizedBox(
                  width: 100.w,
                ),
                Image.asset('assets/image/alert.png'),
              ],
            ),
          ],
          backgroundColor: Colors.white,
          bottom: TabBar(unselectedLabelColor: Colors.grey, tabs: [
            Tab(
              child: Text(
                'All',
                style: AppTextStyle.cairoFontMedium(
                  fontSize: 20,
                  myColor: AppColor.myTeal,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Professional',
                style: AppTextStyle.cairoFontMedium(
                  fontSize: 20,
                  myColor: AppColor.myTeal,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Modern',
                style: AppTextStyle.cairoFontMedium(
                  fontSize: 20,
                  myColor: AppColor.myTeal,
                ),
              ),
            ),
            Tab(
              child: Text(
                'Minimalist',
                style: AppTextStyle.cairoFontMedium(
                  fontSize: 19,
                  myColor: AppColor.myTeal,
                ),
              ),
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            FirstPageView(),
            SecondPageView(),
            ThirdPageView(),
            FourthPageView(),
          ],
        ),
      ));
}
