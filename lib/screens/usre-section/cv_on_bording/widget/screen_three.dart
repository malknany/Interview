import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 297.h,
      width: 248.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
            width: 1.w,
            color: const Color(0xffE0E0E0),
            strokeAlign: BorderSide.strokeAlignInside),
      ),
      child: Stack(children: [
        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25.w,
            vertical: 10,
          ),
          child: Image.asset(image),
        )),
        Align(
            alignment: Alignment.bottomLeft,
            child: Icon(
              Icons.edit,
              color: const Color(0xff455A64).withOpacity(0.86),
            )),
        Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.school,
              color: const Color(0xff455A64).withOpacity(0.86),
            )),
      ]),
    );
  }
}
