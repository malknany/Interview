import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/my_dataset/view.dart';

class CompUploadScreen extends StatelessWidget {
  const CompUploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => navigateTo(context, const CompDataSetScreen()),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30.h,horizontal: 23.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              height: 43.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColor.myDarkTeal,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My DataSet',
                    style: AppTextStyle.cairoFontBold(
                        fontSize: 20, myColor: Colors.white),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 459.h,
            width: 383.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25),
                  offset: const Offset(4, 8),
                  blurRadius: 4,
                ),
              ],
              color: Colors.white,
              border: Border.all(
                width: 1.w,
                color: const Color(0xffEBEBEB).withOpacity(0.86),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Image.asset('assets/image/upload_file.png'),
                  Text(
                    'Upload  your file.txt ',
                    style: AppTextStyle.cairoFontBold(
                        fontSize: 24, myColor: AppColor.textLoginColor),
                  ),
                  Text(
                    'please take care when you upload your file that the question start with Q and the number of the question and the the answer same as .',
                    style: AppTextStyle.cairoFontRegular(
                      fontSize: 18,
                      myColor: AppColor.textColorGrayOfTitle,
                    ),
                  ),
                  SizedBox(height: 32.h,),
                  InkWell(
                    child: Container(
                      height: 53.h,
                      width: 198.w,
                      decoration: BoxDecoration(
                        color: AppColor.myDarkTeal,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                        child: Text(
                          'choose file',
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 20, myColor: Colors.white,),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
