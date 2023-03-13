import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/company-section/profile_editie/widget/textfiled_profile_comp.dart';
import 'package:interview_project/screens/company-section/upload_photo/view.dart';

class CompProfileEditeScreen extends StatefulWidget {
  const CompProfileEditeScreen({Key? key}) : super(key: key);

  @override
  State<CompProfileEditeScreen> createState() => _CompProfileEditeScreenState();
}

class _CompProfileEditeScreenState extends State<CompProfileEditeScreen> {
  Future getImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      CompUpLoadPhotoScreen.compImageSelected = File(result.files.single.path!);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: AppTextStyle.cairoFontBold(
            fontSize: 28,
            myColor: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: AppColor.myTeal,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: AppTextStyle.cairoFontMedium(
                    fontSize: 24, myColor: AppColor.myTeal),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CompUpLoadPhotoScreen.compImageSelected == null
                  ? InkWell(
                      onTap: getImage,
                      child: CircleAvatar(
                        maxRadius: 40.r,
                        backgroundImage:
                            const AssetImage('assets/image/lucidya_Logo.png'),
                      ),
                    )
                  : InkWell(
                      onTap: getImage,
                      child: Container(
                        width: 40.w,
                        height: 40.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: AppColor.myDarkTeal,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.file(
                            CompUpLoadPhotoScreen.compImageSelected!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
              const CompTextFiledProfileEdite(label: 'UserName'),
              const CompTextFiledProfileEdite(label: 'Company Name'),
              const CompTextFiledProfileEdite(label: 'Email'),
              const CompTextFiledProfileEdite(label: 'Password'),
              const CompTextFiledProfileEdite(label: 'Industry'),
              const CompTextFiledProfileEdite(label: 'Location'),
              const CompTextFiledProfileEdite(label: 'Phone'),
              const CompTextFiledProfileEdite(label: 'Website link'),
            ],
          ),
        ),
      ),
    );
  }
}
