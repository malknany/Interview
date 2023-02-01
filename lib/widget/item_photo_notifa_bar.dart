import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/profile/controle.dart';

import '../screens/usre-section/upload_photo/view.dart';

class ItemBarCustom extends StatelessWidget {
  ItemBarCustom({Key? key}) : super(key: key);
  final ProfileController _profileController = ProfileController();
  static GlobalKey<ScaffoldState> globalKey =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            globalKey.currentState!.openDrawer();
          },
          child: Container(
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
        ),
        Icon(
          Icons.notifications,
          color: AppColor.myTeal,
        ),
      ],
    );
  }
}
