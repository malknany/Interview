import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/cv_home/widget/templet_cv.dart';
import 'package:interview_project/widget/item_photo_notifa_bar.dart';

class CvHomeScreen extends StatefulWidget {
  const CvHomeScreen({Key? key}) : super(key: key);

  @override
  State<CvHomeScreen> createState() => _CvHomeScreenState();
}

class _CvHomeScreenState extends State<CvHomeScreen>
    with TickerProviderStateMixin {
  late final TabController _tabController = TabController(
    vsync: this,
    length: 4,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ItemBarCustom(),
              SizedBox(
                height: 5.h,
              ),
              Text(
                'Choose Cv',
                style: AppTextStyle.cairoFontBold(
                    fontSize: 22,
                    myColor: AppColor.textColorGray.withOpacity(0.86)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.h),
                width: double.infinity,
                alignment: Alignment.center,
                height: 55.h,
                child: TabBar(
                    isScrollable: true,
                    indicatorColor: AppColor.myTeal,
                    indicatorSize: TabBarIndicatorSize.label,
                    unselectedLabelStyle: AppTextStyle.cairoFontSimBold(
                        fontSize: 20, myColor: AppColor.myTeal),
                    labelStyle: AppTextStyle.cairoFontSimBold(
                        fontSize: 20, myColor: AppColor.myTeal),
                    labelColor: AppColor.myTeal,
                    unselectedLabelColor: AppColor.textColorGrayOfSubTitle,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: "All",
                      ),
                      Tab(
                        text: "Professional",
                      ),
                      Tab(
                        text: "Modern",
                      ),
                      Tab(
                        text: "Minimalist",
                      ),
                    ]),
              ),
              Expanded(
                child: SizedBox(
                  //margin: EdgeInsets.symmetric(vertical: 10.h),
                  width: double.infinity,
                  child: TabBarView(controller: _tabController, children: [
                    ItemTempletCv(),
                    ItemTempletCv(),
                    ItemTempletCv(),
                    ItemTempletCv(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
