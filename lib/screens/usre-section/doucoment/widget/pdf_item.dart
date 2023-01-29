import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
class PDFFile extends StatelessWidget {
   PDFFile({Key? key,required this.path,required this.title}) : super(key: key);
  String path,title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        foregroundColor: AppColor.myTeal,
        title: Text(title,style:AppTextStyle.cairoFontMedium(fontSize: 18.sp, myColor: AppColor.myTeal),),
      ),
      body: PDF(
        enableSwipe: true,
        fitEachPage: true,
        pageSnap: true,
        autoSpacing: true,
        pageFling: true,
        preventLinkNavigation: true,
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        onPageChanged: (page, total) {
          print('page change: $page/$total');
        },
      ).fromAsset(path),
    );
  }
}
