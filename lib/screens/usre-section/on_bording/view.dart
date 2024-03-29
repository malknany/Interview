import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/on_bording/widget/widget_button.dart';
import 'controller.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final control = ControllerOnBoarding();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              if(control.index<2){
                control.index++;
              }else {
                control.index =2;
              }
            });
          },
          child: Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 23.h,),
              control.index == 2
                  ? SizedBox.shrink()
                  : Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      control.index=2;
                      setState(() {});
                    },
                    child: Text(
                      'Skip',
                      style: AppTextStyle.cairoFontSimBold(fontSize: 20, myColor: AppColor.myTeal),
                    ),
                  ),
                  SizedBox(
                    width: 15.5.w,
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              //onBoarding(index),
              Expanded(
                child: SizedBox(
                  width: 328.w,
                    height: 342.h,
                    child: Image.asset(control.onBoarding[control.index].img),),
              ),
              SizedBox(
                height: 15.75.h,
              ),
              Text(
                control.onBoarding[control.index].title,
                style: AppTextStyle.cairoFontBold(fontSize: 36, myColor: AppColor.myTeal),
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    control.onBoarding[control.index].subTitle,
                    // 23 midem my gray
                    style:  AppTextStyle.eBFontMedium(fontSize: 23, myColor: AppColor.myGraySubTitle),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              control.index == 2?SizedBox.shrink():SizedBox(
                width: 200.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      control.onBoarding.length,
                      (index) => CircleAvatar(
                        radius: 20.r,
                        backgroundColor: index == control.index
                            ? AppColor.myTeal
                            : Color(0xffD2D5D6),
                      ),),
                ),
              ),
              SizedBox(height: 30.h),
              control.index == 2
                  ? Expanded(child: ButtonWidget())
                  : const SizedBox.shrink(),
            ],
          ),
            ),
          ),
        ),
      ),
    );
  }
}
