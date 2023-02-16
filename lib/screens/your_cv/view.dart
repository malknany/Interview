import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widget/item_button.dart';
class YourCvScreen extends StatelessWidget {
  const YourCvScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/image/user profile image.png'),
                  SizedBox(
                    width: 250.w,
                  ),
                  Image.asset('assets/image/alert.png'),
                ],
              ),
              SizedBox(
                height: 60.h,
              ),

              Image.asset('assets/image/templete 3.png'),
              SizedBox(
                height: 30.h,
              ),
              const ItemButtonWidget(text: 'Edit Your Cv',

                  nextPage: SizedBox()),
              SizedBox(
                height: 30.h,
              ),
              const ItemButtonWidget(text: 'Download As PDF',

                  nextPage: SizedBox()),
            ],

          ),

        ),


      ),
    );
  }
}
