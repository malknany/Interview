import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/view.dart';
import 'package:interview_project/screens/usre-section/profile/controle.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';
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
  ProfileController _profileController = ProfileController();
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static final List<Widget> _widgetScreen = <Widget>[
    const HiringScreen(),
    const Center(
      child: Text(
        'Cv',
        style: optionStyle,
      ),
    ),
    HomePageLearningScreen(),
    ProfileScreen()
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
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            //UserAccountsDrawerHeader(accountName: accountName, accountEmail: accountEmail),
            DrawerHeader(
              decoration: BoxDecoration(
                color: AppColor.myTeal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50.w,
                    height: 50.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: AppColor.myDarkTeal,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: UpLoadPhotoScreen.imageSlecte == null
                          ? CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/image/profile_image.png'),
                      )
                          : Image.file(
                        UpLoadPhotoScreen.imageSlecte!,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(_profileController.data.name,
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 20.sp,
                          myColor: AppColor.textColorGray)),
                  Text(_profileController.data.nameJob,
                      style: AppTextStyle.eBFontRegular(
                          fontSize: 20.sp,
                          myColor: Colors.white)),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Profile',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Notifications',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.edit_note,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Edit Your CV',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.mark_email_unread,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Messages',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.bookmark_outlined,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Saved',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Log out',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
            SizedBox(height: 60.h,),
            Divider(
              color: Color(0xffE0E0E0),
              height: 2.h,
              thickness: 2.h,
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Tell a Friends',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                color: AppColor.myTeal,
              ),
              title: Text(
                'Contact Us',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 24.sp, myColor: AppColor.textColorGray),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
