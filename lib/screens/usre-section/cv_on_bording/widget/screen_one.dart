import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/screens/usre-section/cv_on_bording/widget/item_cv_container.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
            padding: EdgeInsets.only(top: 182.h, left: 10.w),
            child: ItemCvContainer(index: 0)),
        Padding(
            padding: EdgeInsets.only(top: 85.h, left: 180.w),
            child: ItemCvContainer(index: 1)),
        Align(
            alignment: Alignment.bottomCenter,
            child: ItemCvContainer(index: 2)),
      ],
    );
  }
}
