import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/notifications/view.dart';
import 'package:interview_project/screens/usre-section/profile/controle.dart';
import 'package:interview_project/screens/usre-section/profile/view.dart';
import 'package:interview_project/screens/usre-section/saved_Massege/view.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';
class ItemDrawer extends StatelessWidget {
  ItemDrawer({Key? key}) : super(key: key);
  final ProfileController _profileController = ProfileController();

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.zero,
      children: [
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
                      ? const CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/image/profile_image.png'),
                  )
                      : Image.file(
                    UpLoadPhotoScreen.imageSlecte!,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(_profileController.data.name,
                  style: AppTextStyle.cairoFontBold(
                      fontSize: 20.sp, myColor: AppColor.textColorGray)),
              Text(_profileController.data.nameJob,
                  style: AppTextStyle.eBFontRegular(
                      fontSize: 20.sp, myColor: Colors.white)),
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
          onTap: () {
            navigateTo(context, const ProfileScreen());
          },
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
          onTap: () {
            navigateTo(context, const NotificationsScreen());
          },
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
          onTap: () {
            navigateTo(context, const SavedMassageScreen());
          },
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
        SizedBox(
          height: 60.h,
        ),
        Divider(
          color: const Color(0xffE0E0E0),
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
    );
  }
}
