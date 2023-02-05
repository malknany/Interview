import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: AppColor.myTeal,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 60.h),
              child: Image.asset('assets/image/notifcation.png'),
            ),
            Text('Notifications',
                style: AppTextStyle.cairoFontBold(
                    fontSize: 36, myColor: AppColor.myDarkTeal)),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Here you will find all the notifications that \n have been sent to you',
              style: AppTextStyle.cairoFontRegular(
                  fontSize: 19, myColor: AppColor.textColorGrayOfSubTitle),
            ),
          ],
        ),
      ),
    );
  }
}
