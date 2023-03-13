

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/profile_edite/widget/textfiledprofile.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';

class ProfileEditeScreen extends StatefulWidget {
  const ProfileEditeScreen({Key? key}) : super(key: key);

  @override
  State<ProfileEditeScreen> createState() => _ProfileEditeScreenState();
}

class _ProfileEditeScreenState extends State<ProfileEditeScreen> {
  Future getImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      UpLoadPhotoScreen.imageSlecte = File(result.files.single.path!);
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
              UpLoadPhotoScreen.imageSlecte == null
                  ? InkWell(
                      onTap: getImage,
                      child: CircleAvatar(
                        maxRadius: 40.r,
                        backgroundImage:
                            const AssetImage('assets/image/profile_image.png'),
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
                            UpLoadPhotoScreen.imageSlecte!,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
              const TextFiledProfile(label: 'Full Name'),
              const TextFiledProfile(label: 'job Title'),
              const TextFiledProfile(label: 'Email'),
              const TextFiledProfile(label: 'Password'),
              const TextFiledProfile(label: 'Birth of Date'),
              const TextFiledProfile(label: 'Phone'),
              const TextFiledProfile(label: 'Location'),
              const TextFiledProfile(label: 'Experience'),
            ],
          ),
        ),
      ),
    );
  }
}