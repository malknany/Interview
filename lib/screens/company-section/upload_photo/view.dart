import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/screens/company-section/comp_info/view.dart';
import 'package:interview_project/widget/item_button.dart';

import '../../../core/style/text_style.dart';
import '../../../core/utils/app_color.dart';

class CompUpLoadPhotoScreen extends StatefulWidget {
  const CompUpLoadPhotoScreen({Key? key}) : super(key: key);
  static File? compImageSelected;

  @override
  State<CompUpLoadPhotoScreen> createState() => _CompUpLoadPhotoScreenState();
}

class _CompUpLoadPhotoScreenState extends State<CompUpLoadPhotoScreen> {

  Future getImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      CompUpLoadPhotoScreen.compImageSelected = File(result.files.single.path!);
      // ignore: use_build_context_synchronously
      navigateTo(context, const CompInfo());
      setState(() {});
    }
  }
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
                      navigateTo(context, const CompInfo());
                    },
                    child: Text(
                      'Skip',
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 25, myColor: AppColor.myTeal),
                    ),
                  ),
                  SizedBox(
                    width: 15.5.w,
                  ),
                ],
              ),
              SizedBox(
                height: 112.h,
              ),
              Image.asset('assets/image/compUpload.png'),
              SizedBox(
                height: 44.h,
              ),
              ItemButtonWidget(
                text: 'upload your photo',
                nextPage: getImage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
