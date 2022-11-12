import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/widget/item_button.dart';

import '../../../core/style/text_style.dart';
import '../../../core/utils/app_color.dart';
import '../homepage/view.dart';

class UpLoadPhotoScreen extends StatefulWidget {
  const UpLoadPhotoScreen({Key? key}) : super(key: key);

  @override
  State<UpLoadPhotoScreen> createState() => _UpLoadPhotoScreenState();
}

class _UpLoadPhotoScreenState extends State<UpLoadPhotoScreen> {
  FilePickerResult? result;

  List<File>? slectedImages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 33.h,
              ),
              Row(
                children: [
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      navigateTo(context, const HomePageScreen());
                    },
                    child: Text(
                      'Skip',
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 20, myColor: AppColor.myTeal),
                    ),
                  ),
                  SizedBox(
                    width: 15.5.w,
                  ),
                ],
              ),
              SizedBox(height: 112.h,),
              Image.asset('assets/image/uploadphoto.png'),
              SizedBox(height: 44.h,),
              // fix it maby have some problem beuz virsion of flutter
              ItemButtonWidget(
                text: 'upload your photo',
                nextPage: () async {
                  result = await FilePicker.platform
                      .pickFiles(type: FileType.image, allowMultiple: true);
                  if (result != null) {
                    setState(
                      () {
                        for (var element in result!.files) {
                          slectedImages!.add(File(element.path!));
                        }
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
