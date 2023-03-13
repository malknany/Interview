import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/utils/app_color.dart';

class AvatarControllerContainer extends StatelessWidget {
  const AvatarControllerContainer(
      {Key? key,
      required this.icons,
      this.myColor = Colors.white,
      required this.ontap})
      : super(key: key);
  final IconData icons;
  final Color myColor;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 53.h,
        width: 53.w,
        decoration: BoxDecoration(
          color: AppColor.myTeal,
          shape: BoxShape.circle,
        ),
        child: Icon(icons, color: myColor),
      ),
    );
  }
}
