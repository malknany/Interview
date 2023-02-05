import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage/widgets/itemlisttile(drawer).dart';
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
    return ListView(
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
                      fontSize: 20, myColor: AppColor.textColorGray)),
              Text(_profileController.data.nameJob,
                  style: AppTextStyle.cairoFontRegular(
                      fontSize: 20, myColor: Colors.white)),
            ],
          ),
        ),
        const ItemListTileDrawer(
            title: 'Profile', icon: Icons.person, nextPage: ProfileScreen()),
        const ItemListTileDrawer(
            title: 'Notifications',
            icon: Icons.notifications,
            nextPage: NotificationsScreen()),
        const ItemListTileDrawer(
            title: 'Edit Your CV', icon: Icons.edit_note, nextPage: SizedBox()),
        const ItemListTileDrawer(
            title: 'Messages',
            icon: Icons.mark_email_unread,
            nextPage: SizedBox()),
        const ItemListTileDrawer(
            title: 'Saved',
            icon: Icons.bookmark_outlined,
            nextPage: SavedMassageScreen()),
        const ItemListTileDrawer(
            title: 'Log out', icon: Icons.logout, nextPage: SizedBox.shrink()),
        SizedBox(
          height: 60.h,
        ),
        Divider(
          color: const Color(0xffE0E0E0),
          height: 2.h,
          thickness: 2.h,
        ),
        const ItemListTileDrawer(
            title: 'Tell a Friends',
            icon: Icons.share,
            nextPage: SizedBox.shrink()),
        const ItemListTileDrawer(
            title: 'Contact Us',
            icon: Icons.phone,
            nextPage: SizedBox.shrink()),
      ],
    );
  }
}
