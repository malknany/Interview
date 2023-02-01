import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class BottomSheetFeedBack extends StatelessWidget {
  const BottomSheetFeedBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: SingleChildScrollView(
        child: Container(
          height: 600.h,
          padding: EdgeInsets.symmetric(horizontal: 39.5.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r),
              topRight: Radius.circular(50.r),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0.h, top: 49.h),
                child: Text(
                  'How Was Your Experience with virtual interview?',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.cairoFontSimBold(
                      fontSize: 26.sp, myColor: AppColor.myDarkTeal),
                ),
              ),
              RatingBar.builder(
                glow: false,
                initialRating: 0,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                ),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: AppColor.myTeal,
                ),
                unratedColor: const Color(0xffC7C5C5),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Write a note',
                  style: AppTextStyle.cairoFontSimBold(
                      fontSize: 20.sp, myColor: AppColor.myTeal),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      offset: const Offset(2, 4),
                      blurRadius: 2,
                    )
                  ],
                ),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  minLines: 1,
                  maxLines: 2,
                  maxLength: 100,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.r),
                        borderSide: BorderSide(
                          strokeAlign: BorderSide.strokeAlignInside,
                          width: 1.w,
                          color: AppColor.myTeal,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              strokeAlign: BorderSide.strokeAlignInside,
                              width: 1.w,
                              color: AppColor.borderTextFiled)),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.only(left: 30.w, top: 15.h, bottom: 15.h),
                      hintText: 'Your note',
                      hintStyle: AppTextStyle.cairoFontBold(
                          fontSize: 20, myColor: AppColor.textFiledColor)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 32.0.h),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(189.w, 48.h),
                    backgroundColor: AppColor.myTeal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Text(
                    'Submit',
                    style: AppTextStyle.eBFontRegular(
                        fontSize: 28.sp, myColor: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
