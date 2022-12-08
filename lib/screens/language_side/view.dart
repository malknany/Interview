import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../../widget/item_button.dart';
import '../../widget/item_textformfield.dart';
import '../experience_side/view.dart';

class LanguageSideScreen extends StatelessWidget {
  const LanguageSideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                const Icon(Icons.arrow_back_ios_new, color: Colors.teal),
                // TODO:  Add InkWell Here After Navigation
                SizedBox(width: 105.w),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Your Resume ',
                  textAlign: TextAlign.center,
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 24,
                    myColor: AppColor.myTeal,
                  ),
                ),
              ]),
              SizedBox(
                height: 170.h,
              ),
              Text(
                'Native language',
                textAlign: TextAlign.start,
                style: AppTextStyle.cairoFontBold(
                  fontSize: 24,
                  myColor: AppColor.myTeal,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              ItemTextFormFiled(
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                'your Level',
                textAlign: TextAlign.start,
                style: AppTextStyle.cairoFontBold(
                  fontSize: 24,
                  myColor: AppColor.myTeal,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              ItemTextFormFiled(
                suffixIcon: IconButton(
                  icon: const Icon(
                    Icons.arrow_drop_down_sharp,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // ToDo: Inkwell add another language
                  Container(
                    width: 26,
                    height: 26,
                    decoration: BoxDecoration(
                        color: AppColor.myTeal, shape: BoxShape.circle),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    'add another language',
                    textAlign: TextAlign.start,
                    style: AppTextStyle.cairoFontMedium(
                      fontSize: 20,
                      myColor: AppColor.myTeal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 41.h,
              ),
              const ItemButtonWidget(text: 'NEXT', nextPage: ExperienceSideScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
