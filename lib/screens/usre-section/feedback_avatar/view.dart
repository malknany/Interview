import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/feedback_avatar/widget/showbottomsheet.dart';

class FeedBackScreen extends StatelessWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.5.w),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/image/feedback.png'),
                Text(
                  'You did an excellent job in \n participating with us',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 30.sp,
                    myColor: AppColor.myDarkTeal,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11.h, bottom: 42.h),
                  child: Text(
                    'please look forward to your result,\n hope you all the best!',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.eBFontMedium(
                      fontSize: 24.sp,
                      myColor: AppColor.textColorGray,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 107.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: const Color(0xffBEBEBE),
                      width: 1.w,
                      strokeAlign: BorderSide.strokeAlignInside
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.25),
                        offset: const Offset(4, 8),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Leave Feedback',
                              style: AppTextStyle.cairoFontSimBold(
                                  fontSize: 20.sp,
                                  myColor: AppColor.myDarkTeal),
                            ),
                            Text(
                              'How Was Your Experience?',
                              style: AppTextStyle.eBFontRegular(
                                  fontSize: 15.sp,
                                  myColor: AppColor.textColorGray),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) => StatefulBuilder(
                                  builder: (context, setState) =>
                                      const BottomSheetFeedBack()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.myDarkTeal,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            fixedSize: Size(137.w, 55.h),
                          ),
                          child: Text(
                            'Give FeedBack',
                            style: AppTextStyle.cairoFontSimBold(
                                fontSize: 19.sp, myColor: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
