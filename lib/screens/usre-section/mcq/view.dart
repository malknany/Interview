import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/mcq/quize.dart';
class MCQScreen extends StatelessWidget {
  const MCQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 38.w),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Text('Recent Traning',style: AppTextStyle.cairoFontMedium(fontSize: 24.sp, myColor: AppColor.textColorGrayOfSubTitle)),
              Container(
                height: 88.h,
                width: 352.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      offset: const Offset(4, 8),
                      blurRadius: 4,
                    ),
                  ],
                  color: Colors.white,
                  border: Border.all(color: Color(0xffE0E0E0),),
                ),
                child:ListTile(
                  leading: Image.asset('assets/image/iconSlackHashtag.png',width: 50),
                  title: Text('Flutter MCQ',style:AppTextStyle.cairoFontSimBold(fontSize: 24.sp, myColor: AppColor.textColorGrayOfSubTitle),),
                  subtitle: Text('10/10 Qastions',style:AppTextStyle.eBFontRegular(fontSize: 18.sp, myColor: AppColor.textColorGrayOfSubTitle),),
                  onTap: (){
                    navigateTo(context, QuizFlutter());
                  },
                )
              ),
            ],
          ),
        ),
    );
  }
}
