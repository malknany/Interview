import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/cv_home/view.dart';
import 'package:interview_project/screens/usre-section/homepage/widgets/drawerItem.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/view.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';

import '../hiring/view.dart';
import '../profile/view.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final globalKey = GlobalKey<ScaffoldState>();
  final List<Widget> _widgetScreen = <Widget>[
    const HiringScreen(),
    const CvHomeScreen(),
    const HomePageLearningScreen(),
    const ProfileScreen()
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex != 3
          ? AppBar(
              leadingWidth: 90.w,
              leading: InkWell(
                onTap: () {
                  globalKey.currentState!.openDrawer();
                },
                child: Center(
                  child: UpLoadPhotoScreen.imageSlecte == null
                      ? const CircleAvatar(
                          foregroundImage:
                              AssetImage('assets/image/profile_image.png'),
                        )
                      : Image.file(
                          UpLoadPhotoScreen.imageSlecte!,
                          fit: BoxFit.fill,
                        ),
                ),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              actions: [
                Icon(
                  Icons.notifications,
                  color: AppColor.myTeal,
                )
              ],
            )
          : null,
      key: globalKey,
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
              padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColor.myTeal,
              color: const Color(0xff455A64).withOpacity(0.72),
              tabs: [
                GButton(
                  icon: Icons.campaign,
                  text: 'Hiring',
                  textStyle: AppTextStyle.cairoFontBold(
                      fontSize: 20, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.badge_outlined,
                  text: 'Cv',
                  textStyle: AppTextStyle.cairoFontBold(
                      fontSize: 20, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.highlight_rounded,
                  text: 'Learning',
                  textStyle: AppTextStyle.cairoFontBold(
                      fontSize: 20, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  textStyle: AppTextStyle.cairoFontBold(
                      fontSize: 20, myColor: Colors.white,),
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
