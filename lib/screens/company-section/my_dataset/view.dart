import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/upload_new_dataset/view.dart';
import 'package:interview_project/screens/usre-section/hiring/widget/searsh_item.dart';

class CompDataSetScreen extends StatelessWidget {
  const CompDataSetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Your DataSet',
          style: AppTextStyle.cairoFontBold(
            fontSize: 25,
            myColor: AppColor.textColorGrayOfEMType,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: AppColor.myTeal,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 44.h,
                    width: 370.w,
                    child: const SearchItem(hintText: 'Search File...............'),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Files',
                        style: AppTextStyle.cairoFontRegular(
                          fontSize: 24,
                          myColor: AppColor.textColorGrayOfEMType,
                        ),
                      ),
                      Text(
                        'View ALL',
                        style: AppTextStyle.cairoFontRegular(
                          fontSize: 16,
                          myColor: AppColor.textColorGrayOfEMType,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Wrap(
                    spacing: 33.w,
                    runSpacing: 39.h,
                    children: List.generate(
                      4,
                      (index) => Container(
                        height: 181.h,
                        width: 164.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 1.w,
                                color: const Color(0xffEBEBEB),
                                strokeAlign: BorderSide.strokeAlignInside),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.25),
                                offset: const Offset(4, 8),
                                blurRadius: 4,
                              ),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 79.h,
                                width: 65.w,
                                child: Image.asset('assets/image/Vector.png')),
                            Text(
                              'Flutter Q',
                              style: AppTextStyle.cairoFontMedium(
                                  fontSize: 20, myColor: AppColor.myTeal),
                            ),
                            Text('24MB',
                                style: AppTextStyle.cairoFontRegular(
                                    fontSize: 16,
                                    myColor: AppColor.textColorGrayOfSubTitle)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 65.h,
                  ),
                  InkWell(
                    onTap: ()=>navigateTo(context,const UploadNewDataSetScreen()),
                    child: Container(
                      height: 49.h,
                      width: 333.w,
                      decoration: BoxDecoration(
                        color: AppColor.myTeal,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Center(
                          child: Text('Upload a New DataSet',
                              style: AppTextStyle.cairoFontBold(
                                  fontSize: 20, myColor: Colors.white))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
