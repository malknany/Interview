import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenTow extends StatelessWidget {
  const ScreenTow({Key? key, required this.image}) : super(key: key);
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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 25.w,
              vertical: 10,
            ),
            child: Image.asset(image),
          )
        ],
      ),
    );
  }
}
