import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/doucoment/view.dart';
import 'package:interview_project/screens/usre-section/mcq/view.dart';
import 'package:interview_project/screens/usre-section/video_learning/widget/view.dart';

class VideoLearningScreen extends StatefulWidget {
  VideoLearningScreen({Key? key}) : super(key: key);

  @override
  State<VideoLearningScreen> createState() => _VideoLearningScreenState();
}

class _VideoLearningScreenState extends State<VideoLearningScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: AppColor.myTeal,
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 75.h,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                decoration: BoxDecoration(
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.25),
                  //     offset: const Offset(4, 8),
                  //     blurRadius: 4,
                  //   )
                  // ],
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xffF8F4F4),
                ),
                child: TabBar(
                  //indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelColor: AppColor.myTeal,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: AppColor.myTeal,),
                  labelStyle: AppTextStyle.cairoFontMedium(
                      fontSize: 18.sp, myColor: AppColor.myDarkTeal,),
                  tabs:  [
                    Tab(
                      text: 'Virtual Interview Training',
                    ),
                    Tab(
                      text: 'Videos',
                    ),
                    Tab(
                      text: 'MCQ ',
                    ),
                    Tab(
                      text: 'Documents',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Text('Avtar tranning',style: TextStyle(fontSize: 25.sp,color: Colors.amber),)),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          VideoFromYouTube(),
                          //ADSScreen.showAlert(context),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MCQScreen(),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DocumentScreen(),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


