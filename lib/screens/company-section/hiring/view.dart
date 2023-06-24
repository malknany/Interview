import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/add_advertisment/view.dart';
import 'package:interview_project/screens/company-section/hiring/widget/item_ads.dart';

class CompHiringScreen extends StatefulWidget {
  const CompHiringScreen({Key? key}) : super(key: key);

  @override
  State<CompHiringScreen> createState() => _CompHiringScreenState();
}

class _CompHiringScreenState extends State<CompHiringScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Recently posted jobs',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 20, myColor: AppColor.myDarkTeal),
              ),
              InkWell(
                onTap: () =>
                    navigateTo(context, const CompAddAdvertisementScreen()),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.h),
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 43.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColor.myDarkTeal,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Add New Advertisement',
                        style: AppTextStyle.cairoFontBold(
                            fontSize: 20, myColor: Colors.white),
                      ),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: List.generate(4, (index) => CompADS(index: index)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
