import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage/widgets/drawer_Item.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/view.dart';
import 'package:interview_project/widget/item_photo_notifa_bar.dart';

import '../hiring/view.dart';
import '../profile/view.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  //GlobalKey<ScaffoldState> _globalKey =GlobalKey<ScaffoldState>();
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
   final List<Widget> _widgetScreen = <Widget>[
    const HiringScreen(),
    const Center(
      child: Text(
        'Cv',
        style: optionStyle,
      ),
    ),
    const HomePageLearningScreen(),
    const ProfileScreen()
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ItemBarCustom.globalKey,
      body: _widgetScreen.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: AppColor.myTeal,
              hoverColor: AppColor.myTeal,
              gap: 9.w,
              activeColor: Colors.white,
              iconSize: 30.sp,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColor.myTeal,
              color: const Color(0xff455A64).withOpacity(0.71),
              tabs: [
                GButton(
                  icon: Icons.campaign,
                  text: 'Hiring',
                  textStyle: AppTextStyle.cairoFontSimBold(
                      fontSize: 20.sp, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.badge_outlined,
                  text: 'Cv',
                  textStyle: AppTextStyle.cairoFontBold(
                      fontSize: 20.sp, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.highlight_rounded,
                  text: 'Learing',
                  textStyle: AppTextStyle.cairoFontSimBold(
                      fontSize: 20.sp, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  textStyle: AppTextStyle.cairoFontSimBold(
                      fontSize: 20.sp, myColor: Colors.white),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ItemDrawer(),
      ),
    );
  }
}
