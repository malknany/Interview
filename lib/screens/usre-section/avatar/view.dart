import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/app_alert/alert.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/avatar/widget/avata_control_container.dart';
import 'package:interview_project/screens/usre-section/homepage/view.dart';

import '../feedback_avatar/view.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 35.0.w),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       InkWell(
              //         onTap: () => Navigator.pop(context),
              //         child: Icon(
              //           Icons.arrow_back_ios_new,
              //           color: AppColor.myTeal,
              //         ),
              //       ),
              //       Icon(
              //         Icons.more_vert,
              //         color: AppColor.myTeal,
              //       )
              //     ],
              //   ),
              // ),
              TweenAnimationBuilder<Duration>(
                  duration: const Duration(minutes: 1),
                  tween: Tween(begin: const Duration(minutes: 1), end: Duration.zero),
                  onEnd: () {
                    navigateTo(
                      context,
                      const FeedBackScreen(),
                    );
                  },
                  builder:
                      (BuildContext context, Duration value, Widget? child) {
                    final minutes = value.inMinutes;
                    final seconds = value.inSeconds % 60;
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        '$minutes:$seconds',
                        textAlign: TextAlign.center,
                        style: AppTextStyle.cairoFontBold(
                            fontSize: 32, myColor: AppColor.myTeal),
                      ),
                    );
                  }),
              Padding(
                padding: EdgeInsets.only(top: 66.0.h, bottom: 122.h),
                child: Image.asset('assets/image/Avatar.png',
                    width: 404.w, height: 465.h),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AvatarControllerContainer(icons: Icons.mic, ontap: () {}),
                    AvatarControllerContainer(
                        icons: Icons.volume_up_sharp, ontap: () {}),
                    AvatarControllerContainer(
                        icons: Icons.sensors,
                        myColor: Colors.red,
                        ontap: () {}),
                    AvatarControllerContainer(
                        icons: Icons.videocam, ontap: () {}),
                    AvatarControllerContainer(
                        icons: Icons.clear,
                        ontap: () {
                          ShowAlert.showAlertWaring(context, const HomePageScreen());
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
