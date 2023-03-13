import 'package:flutter/material.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class ItemListTileDrawer extends StatelessWidget {
  const ItemListTileDrawer({Key? key,required this.title,required this.icon,required this.nextPage}) : super(key: key);
  final IconData icon;
  final String title;
  final Widget nextPage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColor.myTeal,
      ),
      title: Text(
        title,
        style: AppTextStyle.cairoFontSimBold(
            fontSize: 24, myColor: AppColor.textColorGray),
      ),
      onTap: () {
        navigateTo(context, nextPage);
      },
    );
  }
}
