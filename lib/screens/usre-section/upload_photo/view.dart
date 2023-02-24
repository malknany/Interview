import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/widget/item_button.dart';

import '../../../core/style/text_style.dart';
import '../../../core/utils/app_color.dart';

class UpLoadPhotoScreen extends StatefulWidget {
  const UpLoadPhotoScreen({Key? key, required this.nextPage}) : super(key: key);
  static File? imageSlecte;
  final Widget nextPage;

  @override
  State<UpLoadPhotoScreen> createState() => _UpLoadPhotoScreenState();
}

class _UpLoadPhotoScreenState extends State<UpLoadPhotoScreen> {

  Future getImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      UpLoadPhotoScreen.imageSlecte = File(result.files.single.path!);
      navigateAndPop(context, widget.nextPage);
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
                      navigateAndPop(context, widget.nextPage);
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
              SizedBox(
                height: 112.h,
              ),
              Image.asset('assets/image/uploadphoto.png'),
              SizedBox(
                height: 44.h,
              ),
              // fix it maby have some problem beuz virsion of flutter
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
