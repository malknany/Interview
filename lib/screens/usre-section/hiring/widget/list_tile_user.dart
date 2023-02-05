import 'package:flutter/material.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
class ItemListTileUser extends StatelessWidget {
  const ItemListTileUser({Key? key,required this.title,required this.subTitle,required this.icon}) : super(key: key);
  final IconData icon;
  final String title,subTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
      Icon(icon, color: AppColor.myTeal),
      title: Text(
        title,
        style: AppTextStyle.cairoFontRegular(
            fontSize: 20, myColor: AppColor.myTeal),
      ),
      subtitle: Text(subTitle,
          style: AppTextStyle.cairoFontRegular(
              fontSize: 16,
              myColor: AppColor.textColorGray
                  .withOpacity(0.86))),
    );
  }
}
