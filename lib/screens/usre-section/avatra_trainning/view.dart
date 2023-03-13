import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app_alert/alert.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/avatar/view.dart';
import 'package:interview_project/widget/item_button.dart';

class AvatarTraningScreen extends StatelessWidget {
  const AvatarTraningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/image/learningavatar.png'),
          Text('Are You Ready \n For Virtual Interview',
              textAlign: TextAlign.center,
              style: AppTextStyle.cairoFontBold(
                  fontSize: 30, myColor: AppColor.myDarkTeal)),
          SizedBox(
            height: 20.h,
          ),
          ItemButtonWidget(
              text: 'GO TO INTERVIEW',
              nextPage: () {
                ShowAlert.showAlertConfirm(context, const AvatarScreen());
              }),
        ],
      ),
    );
  }
}
