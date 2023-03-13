import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/accepted/view.dart';
import 'package:interview_project/screens/company-section/hiring/view.dart';
import 'package:interview_project/screens/company-section/homepage/widget/item_drawer.dart';
import 'package:interview_project/screens/company-section/upload_com/view.dart';
import 'package:interview_project/screens/company-section/upload_photo/view.dart';

class CompHomePageScreen extends StatefulWidget {
  const CompHomePageScreen({Key? key}) : super(key: key);

  @override
  State<CompHomePageScreen> createState() => _CompHomePageScreenState();
}

class _CompHomePageScreenState extends State<CompHomePageScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final List<Widget> _widgetScreen = <Widget>[
    const CompHiringScreen(),
     CompUploadScreen(),
    AcceptedScreen()
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.myDarkTeal,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CompUpLoadPhotoScreen.compImageSelected == null
            ? SizedBox(
                width: 60.w,
                height: 76.h,
                child: Image.asset('assets/image/lucidya_Logo.png'),
              )
            : Image.file(
                CompUpLoadPhotoScreen.compImageSelected!,
                fit: BoxFit.fill,
              ),
        actions: [
          IconButton(
              onPressed: () {
                _globalKey.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: AppColor.myDarkTeal,
              )),
        ],
      ),
      key: _globalKey,
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
              gap: 5.w,
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
                      fontSize: 20, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.cloud_upload_rounded,
                  text: 'Upload',
                  textStyle: AppTextStyle.cairoFontBold(
                      fontSize: 20, myColor: Colors.white),
                ),
                GButton(
                  icon: Icons.groups,
                  text: 'accepted',
                  textStyle: AppTextStyle.cairoFontSimBold(
                      fontSize: 20, myColor: Colors.white),
                ),
                // GButton(
                //   icon: Icons.person,
                //   text: 'Profile',
                //   textStyle: AppTextStyle.cairoFontSimBold(
                //       fontSize: 20.sp, myColor: Colors.white),
                // ),
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
      drawer: const Drawer(
        child: CompItemDrawer(),
      ),
    );
  }
}
