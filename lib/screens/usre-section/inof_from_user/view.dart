import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage/view.dart';
import 'package:interview_project/widget/item_button.dart';
import 'package:interview_project/widget/item_drob_down.dart';
class InfoFromUser extends StatelessWidget {
  const InfoFromUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/image/logowithouttext.jpg')),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0.h),
                  child: Text(
                    'Most Recent Job Title',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor: AppColor.textColorGrayOfEMType.withOpacity(0.86),
                    ),
                  ),
                ),
                ItemDropDownWidget(listOfName: const ["Student", "Senior","Junior"], hintText: ''),
                SizedBox(
                  height: 17.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0.h),
                  child: Text(
                    'Job Title',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor: AppColor.textColorGrayOfEMType.withOpacity(0.86),
                    ),
                  ),
                ),
                ItemDropDownWidget(listOfName: const ["Flutter", "BackEnd","FrontEnd"], hintText: ''),
                SizedBox(
                  height: 17.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0.h),
                  child: Text(
                    'Job Location',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor: AppColor.textColorGrayOfEMType.withOpacity(0.86),
                    ),
                  ),
                ),
                ItemDropDownWidget(listOfName: const ["Mansoura", "Cairo","Alexandria","Damietta","Luxor"], hintText: ''),
                SizedBox(
                  height: 17.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0.h),
                  child: Text(
                    'Years of Experience',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor: AppColor.textColorGrayOfEMType.withOpacity(0.86),
                    ),
                  ),
                ),
                ItemDropDownWidget(listOfName: const ["1-3","2-5","5-10"], hintText: ''),
                SizedBox(
                  height: 17.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 9.0.h),
                  child: Text(
                    'Employment Type',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20,
                      myColor: AppColor.textColorGrayOfEMType.withOpacity(0.86),
                    ),
                  ),
                ),
                ItemDropDownWidget(listOfName: const ["Part time","Full time"], hintText: ''),
                SizedBox(
                  height: 39.h,
                ),
                ItemButtonWidget(
                  text: 'NEXT',
                  nextPage: () => navigateToAndRemoveUntil(
                    context,
                    page: const HomePageScreen(),
                  ),
                ),
                SizedBox(
                  height: 39.h,
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
