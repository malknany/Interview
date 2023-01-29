import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/doucoment/widget/list_tile.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({Key? key}) : super(key: key);

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Files',
                    style: AppTextStyle.cairoFontMedium(
                        fontSize: 24.sp, myColor: AppColor.myTeal)),
                Text(
                  'View All',
                  style: AppTextStyle.cairoFontSimBold(
                      fontSize: 16.sp, myColor: AppColor.myTeal),
                ),
              ],
            ),
          ),
          ItemListTile(title: 'Mohamed Resume without photo', subTitle: '45 kb', path: 'assets/PDFs/Mohmed Resume without photo.pdf'),
          ItemListTile(title: 'Mohamed Resume with photo', subTitle: '73 kb', path: 'assets/PDFs/Mohmed Resume with photo.pdf'),
          ItemListTile(title: 'Selected Topics', subTitle: '120 kb', path: 'assets/PDFs/Selected_Topics.pdf'),
        ],
      ),
    );
  }
}


