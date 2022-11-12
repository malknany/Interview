import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/hiring/controler.dart';
import 'package:interview_project/screens/usre-section/hiring/widget/ad_container.dart';
import 'package:interview_project/screens/usre-section/hiring/widget/bottom_sheet_item.dart';
import 'package:interview_project/screens/usre-section/hiring/widget/searsh_item.dart';

class HiringScreen extends StatefulWidget {
  HiringScreen({Key? key}) : super(key: key);

  @override
  State<HiringScreen> createState() => _HiringScreenState();
}

class _HiringScreenState extends State<HiringScreen> {
  final HiringController controller = HiringController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/image/profile_image.png'),
                      ),
                      Icon(
                        Icons.notifications,
                        color: AppColor.myTeal,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0.h),
                    child: Text(
                      'Find Your Dream Job',
                      style: AppTextStyle.cairoFontBold(
                        fontSize: 24.sp,
                        myColor: Color(0xff455A64).withOpacity(0.84),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 44.h,
                        width: 303.w,
                        child: SearchItem(hintText: 'Search ......'),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor:
                                Color(0xffD9D9D9).withOpacity(0.85),
                            context: context,
                            builder: (context) => StatefulBuilder(
                              builder: (context, setState) =>
                                  const ShowBottomSheetScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 53.w,
                          height: 44.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                                color: AppColor.myTeal,
                                width: 1.w,
                                strokeAlign: StrokeAlign.inside),
                          ),
                          child: Center(
                            child: ImageIcon(
                              color: AppColor.myTeal,
                              AssetImage('assets/image/icon_edit.png'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ' Recent Jobs',
                          style: AppTextStyle.cairoFontBold(
                            fontSize: 20.sp,
                            myColor: Color(0xff455A64).withOpacity(0.84),
                          ),
                        ),
                        Text(
                          'View All',
                          style: AppTextStyle.cairoFontMedium(
                            fontSize: 16.sp,
                            myColor: Color(0xff455A64).withOpacity(0.84),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(6, (index) => ADContainer()),
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
