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
                        fontSize: 2, myColor: AppColor.myTeal)),
                Text(
                  'View All',
                  style: AppTextStyle.cairoFontSimBold(
                      fontSize: 16, myColor: AppColor.myTeal),
                ),
              ],
            ),
          ),
          const ItemListTile(
              title: 'web-developer-interview-questions',
              subTitle: '26 kb',
              path: 'assets/PDFs/web-developer-interview-questions.pdf'),
          const ItemListTile(
              title: 'CSS', subTitle: '561 kb', path: 'assets/PDFs/CSS.pdf'),
          const ItemListTile(
              title: 'HTML', subTitle: '837 kb', path: 'assets/PDFs/HTML.pdf'),
          const ItemListTile(
              title: 'Node.js',
              subTitle: '774 kb',
              path: 'assets/PDFs/Node.js.pdf'),
          const ItemListTile(
              title: 'React', subTitle: '1 mb', path: 'assets/PDFs/React .pdf'),
        ],
      ),
    );
  }
}
