import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/avatra_trainning/view.dart';
import 'package:interview_project/screens/usre-section/doucoment/view.dart';
import 'package:interview_project/screens/usre-section/mcq/view.dart';
import 'package:interview_project/screens/usre-section/video_from_youtupe/view.dart';

class SecondPageLearningScreen extends StatefulWidget {
  const SecondPageLearningScreen({Key? key}) : super(key: key);

  @override
  State<SecondPageLearningScreen> createState() =>
      _SecondPageLearningScreenState();
}

class _SecondPageLearningScreenState extends State<SecondPageLearningScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    vsync: this,
    length: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories Learning',
          style: TextStyle(fontSize: 20.sp, color: AppColor.myTeal),
        ),
        centerTitle: true,
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
              margin: EdgeInsets.symmetric(vertical: 10.h),
              width: double.infinity,
              alignment: Alignment.center,
              height: 55.h,
              child: TabBar(
                  isScrollable: true,
                  indicatorColor: AppColor.myTeal,
                  indicatorSize: TabBarIndicatorSize.label,
                  unselectedLabelStyle: AppTextStyle.cairoFontSimBold(
                      fontSize: 20, myColor: AppColor.myTeal),
                  labelStyle: AppTextStyle.cairoFontSimBold(
                      fontSize: 20, myColor: AppColor.myTeal),
                  labelColor: AppColor.myTeal,
                  unselectedLabelColor: AppColor.textColorGrayOfSubTitle,
                  controller: _tabController,
                  tabs:  [
                    Tab(
                      height: 60.h,
                      text: "Virtual Interview Training",
                    ),
                    Tab(
                      height: 60.h,
                      text: "Videos",
                    ),
                    Tab(
                      height: 60.h,
                      text: "MCQ",
                    ),
                    Tab(
                      height: 60.h,
                      text: "Documents",
                    ),
                  ]),
            ),
            Expanded(
              child: SizedBox(
                //margin: EdgeInsets.symmetric(vertical: 10.h),
                width: double.infinity,
                child: TabBarView(controller: _tabController, children: const [
                  AvatarTraningScreen(),
                  VideoFromYouTube(),
                  MCQScreen(),
                  DocumentScreen(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Container(
//   height: 75.h,
//   width: double.infinity,
//   margin: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
//   decoration: BoxDecoration(
//     // boxShadow: [
//     //   BoxShadow(
//     //     color: Colors.grey.withOpacity(0.25),
//     //     offset: const Offset(4, 8),
//     //     blurRadius: 4,
//     //   )
//     // ],
//     borderRadius: BorderRadius.circular(10.r),
//     color: const Color(0xffF8F4F4),
//   ),
//   child: TabBar(
//     //indicatorSize: TabBarIndicatorSize.label,
//     unselectedLabelColor: AppColor.myTeal,
//     indicator: BoxDecoration(
//         borderRadius: BorderRadius.circular(10.r),
//         color: AppColor.myTeal,),
//     labelStyle: AppTextStyle.cairoFontMedium(
//         fontSize: 18, myColor: AppColor.myDarkTeal,),
//     tabs:  const [
//       Tab(
//         text: 'Virtual Interview Training',
//       ),
//       Tab(
//         text: 'Videos',
//       ),
//       Tab(
//         text: 'MCQ ',
//       ),
//       Tab(
//         text: 'Documents',
//       ),
//     ],
//   ),
// ),
// Expanded(
//   child: TabBarView(
//     children: [
//       SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset('assets/image/learningavatar.png'),
//             Text('Are You Ready \n For Virtual Interview',
//                 textAlign: TextAlign.center,
//                 style: AppTextStyle.cairoFontBold(
//                     fontSize: 30, myColor: AppColor.myDarkTeal)),
//             SizedBox(
//               height: 20.h,
//             ),
//             ItemButtonWidget(
//                 text: 'GO TO INTERVIEW', nextPage: () {}),
//           ],
//         ),
//       ),
//       SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const VideoFromYouTube(),
//             //ADSScreen.showAlert(context),
//             SizedBox(
//               height: 20.h,
//             ),
//           ],
//         ),
//       ),
//       SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const MCQScreen(),
//             SizedBox(
//               height: 20.h,
//             ),
//           ],
//         ),
//       ),
//       SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const DocumentScreen(),
//             SizedBox(
//               height: 20.h,
//             ),
//           ],
//         ),
//       ),
//     ],
//   ),
// ),
