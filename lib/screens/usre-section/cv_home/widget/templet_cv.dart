import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/cv_home/control.dart';
import 'package:interview_project/screens/usre-section/resume_steber/view.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';
import 'package:interview_project/widget/item_button.dart';

class ItemTempletCv extends StatelessWidget {
  ItemTempletCv({
    Key? key,
  }) : super(key: key);
  final CvHomeControl _control = CvHomeControl();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 26.h,
        runSpacing: 35.w,
        children: List.generate(
          _control.image.length,
          (index) => InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                builder: (context) => SizedBox(
                  height: 550.h,
                  child: Column(
                    children: [
                      Container(
                        color: const Color(0xffD9D9D9).withOpacity(0.46),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 25.0.w, right: 90.w),
                              child: InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.clear,
                                  color: AppColor.myTeal,
                                ),
                              ),
                            ),
                            Text(
                              'Resume Format',
                              style: AppTextStyle.cairoFontBold(
                                  fontSize: 24, myColor: AppColor.myTeal),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 20.h,
                              ),
                              Image.asset(_control.image[index]),
                              SizedBox(
                                height: 20.h,
                              ),
                              ItemButtonWidget(
                                  width: 190.w,
                                  height: 70.h,
                                  text: 'Try it',
                                  sizeFont: 24,
                                  nextPage: () {
                                    navigateTo(
                                      context,
                                      const UpLoadPhotoScreen(
                                        nextPage: ResumeStepper(),
                                      ),
                                    );
                                  }),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(_control.image[index]),
            ),
          ),
        ),
      ),
    );
  }
}
