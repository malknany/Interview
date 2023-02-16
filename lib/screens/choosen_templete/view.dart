import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../../widget/item_button.dart';

class ChoosenTempleteScreen extends StatelessWidget {
  const ChoosenTempleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Column(
          children: [
            Row(
             children: [
               Container(
                 height: 150.h,
                 width: 428.w,
                  color: AppColor.lightGreyColor,
                   child: Padding(
                     padding: const EdgeInsets.all(50),
                     child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                       Image.asset('assets/image/end.png'),
                           SizedBox(
                             width: 78.w,
                           ),
                           Text(
                             'Resume Formate',
                             textAlign: TextAlign.start,
                             style: AppTextStyle.cairoFontBold(
                               fontSize: 24,
                               myColor: AppColor.myTeal,
                             ),
                           ),
                     ]),
                   ),),

             ],

            ),
            SizedBox(
              height: 40.h,
            ),
            Image.asset('assets/image/templete 3.png'),
            SizedBox(
              height: 40.h,
            ),
            const ItemButtonWidget(text: 'Try it',

                nextPage: SizedBox()),
          ],

        ),

    ),);
  }
}
