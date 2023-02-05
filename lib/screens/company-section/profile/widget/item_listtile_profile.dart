import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
class CompItemListTileProfile extends StatelessWidget {
  const CompItemListTileProfile({Key? key,required this.icon,required this.subTitle,required this.title,this.isDivider=true}) : super(key: key);
  final IconData icon;
  final String title,subTitle;
  final bool isDivider;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading:
          Icon(icon, color: AppColor.myTeal),
          title: Text(
            title,
            style: AppTextStyle.cairoFontRegular(
                fontSize: 24, myColor: AppColor.myTeal),
          ),
          subtitle: Text(subTitle,
              style: AppTextStyle.cairoFontRegular(
                  fontSize: 20,
                  myColor: AppColor.textColorGray
                      .withOpacity(0.86))),
        ),
        SizedBox(height: 11.h,),
        isDivider?Divider(
          color: const Color(0xffE0E0E0),
          height: 2.h,
          thickness: 2.h,
        ):const SizedBox.shrink(),
      ],
    );
  }
}
