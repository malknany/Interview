import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class UploadNewDataSetScreen extends StatelessWidget {
  const UploadNewDataSetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, backgroundColor: AppColor.myTeal),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter Q ',
          style: AppTextStyle.cairoFontBold(
            fontSize: 27,
            myColor: Colors.white,
          ),
        ),
        backgroundColor: AppColor.myTeal,
        foregroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColor.myTeal,
          statusBarIconBrightness: Brightness.light,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: AppTextStyle.cairoFontRegular(
                  fontSize: 20,
                  myColor: Colors.white,
                ),
              )),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Question',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 20, myColor: AppColor.myTeal),
              ),
              Container(
                height: 77.h,
                margin: EdgeInsets.symmetric(vertical: 6.h),
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
                  minLines: 10,
                  maxLines: 10,
                  showCursor: false,
                  keyboardType: TextInputType.text,
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
                        color: AppColor.borderTextFiled,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   height: 57.h,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10.r),
              //     border: Border.all(width: 1.w,color: Color(0xffE0E0E0)),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.25),
              //         offset: const Offset(4, 8),
              //         blurRadius: 4,
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                'Answer',
                style: AppTextStyle.cairoFontSimBold(
                    fontSize: 20, myColor: AppColor.myTeal),
              ),
              Container(
                height: 154.h,
                margin: EdgeInsets.symmetric(vertical: 6.h),
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
                  //expands: true,
                  keyboardType: TextInputType.text,
                  minLines: 10,
                  maxLines: 10,
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
                        color: AppColor.borderTextFiled,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              // Container(
              //   width: double.infinity,
              //   height: 209.h,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(10.r),
              //     border: Border.all(width: 1.w,color: Color(0xffE0E0E0)),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.25),
              //         offset: const Offset(4, 8),
              //         blurRadius: 4,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
