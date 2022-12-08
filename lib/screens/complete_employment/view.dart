import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/app_color.dart';
import '../../core/utils/app_strings.dart';
import '../../widget/item_button.dart';
import '../../widget/item_textformfield.dart';
import '../design_templete/view.dart';

class CompleteEmploymentScreen extends StatelessWidget {
  const CompleteEmploymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Center(
                child: Image.asset(
              'assets/image/logo.png',
              height: 170,
              width: 150,
            )),
            Text(
              'Most Recent Job Title',

              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColor.textColorGray,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppStrings.fontCairo),
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
              height: 17.h,
            ),
            Text(
              'Job Title',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColor.textColorGray,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppStrings.fontCairo),
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
              height: 17.h,
            ),
            Text(
              ' Job Location',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColor.textColorGray,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppStrings.fontCairo),
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
              height: 17.h,
            ),
            Text(
              'Years of Experience',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColor.textColorGray,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppStrings.fontCairo),
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
              height: 17.h,
            ),
            Text(
              'Employment Type',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColor.textColorGray,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppStrings.fontCairo),
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
              height: 17.h,
            ),
            const ItemButtonWidget(text: 'NEXT', nextPage: DesignTempleteScreen()),
          ]),
        ),
      ),
    );
  }
}
