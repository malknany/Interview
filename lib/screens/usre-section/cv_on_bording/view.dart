import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/cv_on_bording/controle.dart';
import 'package:interview_project/screens/usre-section/cv_on_bording/widget/screen_one.dart';
import 'package:interview_project/screens/usre-section/cv_on_bording/widget/screen_three.dart';
import 'package:interview_project/screens/usre-section/cv_on_bording/widget/screen_tow.dart';
import 'package:interview_project/widget/item_button.dart';

class CvOnBoardingScreen extends StatefulWidget {
  const CvOnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<CvOnBoardingScreen> createState() => _CvOnBoardingScreenState();
}

class _CvOnBoardingScreenState extends State<CvOnBoardingScreen> {
  final CvOnBoardingControl _control = CvOnBoardingControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 500.h,
                child: Stack(children: [
                  Container(
                    height: 500.h,
                    decoration: BoxDecoration(
                      color: AppColor.myDarkTeal,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(300.r),
                        bottomRight: Radius.circular(300.r),
                        bottomLeft: Radius.circular(280.r),
                      ),
                    ),
                  ),
                  _control.index == 0
                      ? const ScreenOne()
                      : _control.index == 1
                          ? Center(
                              child: ScreenTow(image: _control.item[1].image))
                          : Center(
                              child:
                                  ScreenThree(image: _control.item[2].image)),
                ]),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                _control.item[_control.index].title,
                style: AppTextStyle.cairoFontBold(
                    fontSize: 29, myColor: AppColor.myTeal),
              ),
              SizedBox(
                height: 4.h,
              ),
              Expanded(
                child: Text(
                  _control.item[_control.index].subTitle,
                  style: AppTextStyle.cairoFontRegular(
                    fontSize: 16,
                    myColor: AppColor.myGraySubTitle,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: 200.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                    _control.item.length,
                    (index) => CircleAvatar(
                      radius: 15.r,
                      backgroundColor: index == _control.index
                          ? const Color(0xff16BFB7)
                          : const Color(0xffD2D5D6),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              ItemButtonWidget(
                  text: _control.index == 2 ? 'Get Start' : 'NEXT',
                  nextPage: () {
                    if (_control.index == 2) {
                      //navigateTo(context, );
                    } else {
                      const Duration(milliseconds: 2000);
                      setState(() {
                        if (_control.index < 2) {
                          _control.index++;
                        } else {
                          _control.index = 2;
                        }
                      });
                    }
                  }),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Clipper1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    // path.lineTo(0, size.height);
    // //path.lineTo(size.width, 0);
    // path.quadraticBezierTo(size.width*50, size.height, 0, 0);
    // path.quadraticBezierTo(size.width, 0, 0, 0);
    return path;
    throw UnimplementedError();
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
