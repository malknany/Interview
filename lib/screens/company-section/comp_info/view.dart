import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/homepage/view.dart';
import 'package:interview_project/widget/item_button.dart';
import 'package:interview_project/widget/item_textformfield.dart';

class CompInfo extends StatelessWidget {
  const CompInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 29.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                      child: Image.asset('assets/image/logowithouttext.jpg')),
                  Text(
                    'Industry',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor:
                          AppColor.textColorGrayOfSubTitle.withOpacity(0.86),
                    ),
                  ),
                  const ItemTextFormFiled(),
                  Text(
                    'Founded',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor:
                          AppColor.textColorGrayOfSubTitle.withOpacity(0.86),
                    ),
                  ),
                  const ItemTextFormFiled(),
                  Text(
                    'Add your Website Link',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor:
                          AppColor.textColorGrayOfSubTitle.withOpacity(0.86),
                    ),
                  ),
                  const ItemTextFormFiled(),
                  Text(
                    'Description',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor:
                          AppColor.textColorGrayOfSubTitle.withOpacity(0.86),
                    ),
                  ),
                  Container(
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
                    child: SizedBox(
                      height: 172.h,
                      child: TextFormField(
                        //expands: true,
                        keyboardType: TextInputType.text,
                        minLines: 6,
                        maxLines: 6,
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
                              color: AppColor.borderTextFiled,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 41.h,
                  ),
                  ItemButtonWidget(
                      text: 'NEXT',
                      nextPage: () {
                        navigateToAndRemoveUntil(context,
                            page: const CompHomePageScreen());
                      }),
                  SizedBox(
                    height: 60.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
