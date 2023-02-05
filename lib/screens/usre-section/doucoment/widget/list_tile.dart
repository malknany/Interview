import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/doucoment/widget/pdf_item.dart';
class ItemListTile extends StatefulWidget {
  const ItemListTile({Key? key,required this.title,required this.subTitle,required this.path}) : super(key: key);
  final String title, subTitle,path;

  @override
  State<ItemListTile> createState() => _ItemListTileState();
}

class _ItemListTileState extends State<ItemListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.5.h),
      child: ListTile(
        title: Text(widget.title,
            style: AppTextStyle.cairoFontBold(
                fontSize: 16,
                myColor: AppColor.textColorGrayOfSubTitle)),
        leading: Image.asset('assets/image/icon PDF File.png'),
        subtitle: Text(widget.subTitle,
            style: AppTextStyle.cairoFontSimBold(
                fontSize: 16, myColor: AppColor.myTeal)),
        onTap: () {
          navigateTo(
            context,
            PDFFile(path: widget.path,title: widget.title),
          );
        },
      ),
    );
  }
}
