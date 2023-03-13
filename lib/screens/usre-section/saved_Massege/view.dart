import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class SavedMassageScreen extends StatelessWidget {
  const SavedMassageScreen({Key? key}) : super(key: key);

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
              padding: EdgeInsets.symmetric(vertical: 65.h),
              child: Image.asset('assets/image/saveMassge.png'),
            ),
            Text('You have no Saved Items',
                style: AppTextStyle.cairoFontBold(
                    fontSize: 32, myColor: AppColor.myDarkTeal)),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'Here you will find all the adverisiements \n you saved',
              style: AppTextStyle.cairoFontRegular(
                  fontSize: 19, myColor: AppColor.textColorGrayOfSubTitle),
            ),
          ],
        ),
      ),
    );
  }
}
