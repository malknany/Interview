import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/video_learning/view.dart';
import 'package:interview_project/widget/item_button.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key, required this.score}) : super(key: key);
  int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Round Result',
                  style: AppTextStyle.cairoFontMedium(
                      fontSize: 20.sp, myColor: AppColor.myTeal),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'GOOD JOB KEEP IT UP!',
                  style: AppTextStyle.cairoFontSimBold(
                      fontSize: 26.sp,
                      myColor: AppColor.textColorGrayOfSubTitle),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Image.asset('assets/image/result.png'),
                Text('${(score / 10) * 100}%',
                    style: AppTextStyle.cairoFontBold(
                        fontSize: 36.sp, myColor: AppColor.myDarkTeal)),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xff969595),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            offset: const Offset(4, 8),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Total',style:AppTextStyle.eBFontBold(fontSize: 20.sp, myColor: AppColor.myTeal),),
                          SizedBox(height: 2.h,),
                          Text('10',style:AppTextStyle.eBFontBold(fontSize: 20.sp, myColor: AppColor.myTeal),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xff969595),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            offset: const Offset(4, 8),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Right',style:AppTextStyle.eBFontBold(fontSize: 20.sp, myColor: AppColor.myTeal),),
                          SizedBox(height: 5.h,),
                          Text('$score',style:AppTextStyle.eBFontBold(fontSize: 20.sp, myColor: AppColor.myTeal),),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xff969595),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.25),
                            offset: const Offset(4, 8),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Wrong',style:AppTextStyle.eBFontBold(fontSize: 20.sp, myColor: AppColor.myTeal),),
                          SizedBox(height: 5.h,),
                          Text('${10-score}',style:AppTextStyle.eBFontBold(fontSize: 20.sp, myColor: AppColor.myTeal),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h,),
                ItemButtonWidget(text: 'Finish', nextPage: (){
                  navigateToAndRemove(context, page: VideoLearningScreen());
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
