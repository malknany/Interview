import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
class CompleteResumeScreen extends StatelessWidget {
  const CompleteResumeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/finish.png',alignment: Alignment.center),
              SizedBox(
                height: 44.h,
              ),
              Text(
                'Thank you For your answers',
                textAlign: TextAlign.center,
                style: AppTextStyle.cairoFontBold(
                  fontSize: 24,
                  myColor: AppColor.myTeal,
                ),
              ),
              Text(
                'Your data has been entered successfully',
                textAlign: TextAlign.center,
                style: AppTextStyle.cairoFontMedium(
                  fontSize: 19,
                  myColor: AppColor.textColorGray,
                ),
              ),
            ],
          ),
        ),





         // child: Container(
        //   width: double.infinity,
        //  height: double.infinity,
        //   child: Center(child: Image.asset('assets/image/finish.png',alignment: Alignment.center)),
        // ),

        ),

      );

  }
}
