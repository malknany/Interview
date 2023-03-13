import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/profile/view.dart';
import 'package:interview_project/screens/company-section/upload_photo/view.dart';
import 'package:interview_project/screens/usre-section/homepage/widgets/itemlisttile(drawer).dart';

class CompItemDrawer extends StatelessWidget {
  const CompItemDrawer({Key? key}) : super(key: key);

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
                  child: CompUpLoadPhotoScreen.compImageSelected == null
                      ? const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/image/lucidya_Logo.png'),
                        )
                      : Image.file(
                          CompUpLoadPhotoScreen.compImageSelected!,
                          fit: BoxFit.fill,
                        ),
                ),
              ),
              Text(
                'LUCIDYA',
                style: AppTextStyle.cairoFontSimBold(
                  fontSize: 20,
                  myColor: AppColor.textColorGray,
                ),
              ),
              Text(
                "IT Services and IT Consulting",
                style: AppTextStyle.cairoFontRegular(
                  fontSize: 20,
                  myColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
        ItemListTileDrawer(
            title: 'Profile', icon: Icons.person, nextPage: CompProfileScreen()),
        const ItemListTileDrawer(
            title: 'Add advertisement',
            icon: Icons.add_circle_outlined,
            nextPage: SizedBox.shrink()),
        const ItemListTileDrawer(
            title: 'Edite DataSite',
            icon: Icons.edit_note,
            nextPage: SizedBox.shrink()),
        const ItemListTileDrawer(
            title: 'Messages',
            icon: Icons.mark_email_unread,
            nextPage: SizedBox.shrink()),
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
