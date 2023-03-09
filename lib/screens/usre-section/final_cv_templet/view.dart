import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage/view.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart ' as pw;
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class FinalCvTempletScreen extends StatelessWidget {
  FinalCvTempletScreen({
    required this.userPeriod,
    required this.userCertificates,
    required this.userName,
    required this.userJobTitle,
    required this.userEmail,
    required this.userAddress,
    required this.userPhone,
    required this.userLink,
    required this.userUnivName,
    required this.userDescription,
    required this.userListOfLanguage,
    required this.userListOfSkills,
    Key? key,
  }) : super(key: key);
  final String userName,
      userDescription,
      userPeriod,
      userLink,
      userEmail,
      userAddress,
      userPhone,
      userJobTitle,
      userUnivName,
      userCertificates;
  final List<String> userListOfLanguage;
  final List<String> userListOfSkills;
  final screenshotControl = ScreenshotController();

  Future screenToPdf(
    String fileName,
    screenShot,
  ) async {
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Expanded(
            child: pw.Image(pw.MemoryImage(screenShot), fit: pw.BoxFit.contain),
          );
        },
      ),
    );
    String path = (await getTemporaryDirectory()).path;
    File pdfFile = await File('$path/$fileName.pdf').create();

    pdfFile.writeAsBytesSync(await pdf.save());
    await Share.shareFiles([pdfFile.path]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.myTeal,
        centerTitle: true,
        title: Text(
          'Your Cv',
          style: AppTextStyle.cairoFontBold(
              fontSize: 25, myColor: AppColor.myTeal),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () async {
                screenToPdf('My CV', await screenshotControl.capture());
              },
              icon: Icon(
                Icons.share,
                color: AppColor.myTeal,
              )),
          IconButton(
              onPressed: () {
                navigateAndFinished(context, const HomePageScreen());
              },
              icon: Icon(
                Icons.home,
                color: AppColor.myTeal,
              ))
        ],
      ),
      body: Screenshot(
        controller: screenshotControl,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 93.h,
                color: const Color(0xff8D4B55),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UpLoadPhotoScreen.imageSlecte == null
                        ? CircleAvatar(
                            maxRadius: 50.r,
                            backgroundImage: const AssetImage(
                                'assets/image/profile_image.png'),
                          )
                        : Container(
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
                    SizedBox(
                      width: 33.w,
                    ),
                    Column(
                      children: [
                        Text(
                          userName,
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 24, myColor: Colors.white),
                        ),
                        Text(
                          userJobTitle,
                          style: AppTextStyle.cairoFontRegular(
                              fontSize: 15, myColor: Colors.white),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'personality',
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 17, myColor: const Color(0xff8D4B55)),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: const Divider(
                            color: Color(0xff8D4B55),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(userEmail,
                                style: AppTextStyle.cairoFontRegular(
                                    fontSize: 12, myColor: Colors.black)),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.phone_android,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              userPhone,
                              style: AppTextStyle.cairoFontRegular(
                                  fontSize: 12, myColor: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_pin,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              userAddress,
                              style: AppTextStyle.cairoFontRegular(
                                  fontSize: 12, myColor: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'certificates',
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 17, myColor: const Color(0xff8D4B55)),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Divider(
                            color: const Color(0xff8D4B55),
                            height: 2.h,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          '- ${'$userCertificates\n$userPeriod'} ',
                          softWrap: true,
                          textAlign: TextAlign.start,
                          style: AppTextStyle.cairoFontRegular(
                              fontSize: 12, myColor: Colors.black),
                        ),
                        Text(
                          '- Link : $userLink ',
                          softWrap: true,
                          textAlign: TextAlign.start,
                          style: AppTextStyle.cairoFontRegular(
                              fontSize: 12, myColor: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Language',
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 17, myColor: const Color(0xff8D4B55)),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: const Divider(
                            color: Color(0xff8D4B55),
                          ),
                        ),
                        Column(
                          children: List.generate(
                              userListOfLanguage.length,
                              (index) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.0.h),
                                    child: Text(
                                      '- ${userListOfLanguage[index]}',
                                      style: AppTextStyle.cairoFontRegular(
                                          fontSize: 14, myColor: Colors.black),
                                    ),
                                  )),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Skills',
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 17, myColor: const Color(0xff8D4B55)),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: const Divider(
                            color: Color(0xff8D4B55),
                          ),
                        ),
                        Column(
                          children: List.generate(
                              userListOfSkills.length,
                              (index) => Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 4.0.h),
                                    child: Text(
                                      '- ${userListOfSkills[index]}',
                                      style: AppTextStyle.cairoFontRegular(
                                          fontSize: 14, myColor: Colors.black),
                                    ),
                                  )),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Experience',
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 17, myColor: const Color(0xff8D4B55)),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: const Divider(
                            color: Color(0xff8D4B55),
                          ),
                        ),
                        SizedBox(
                          height: 150.h,
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            '- Experience : $userDescription ',
                            style: AppTextStyle.cairoFontRegular(
                                fontSize: 12, myColor: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Education',
                          style: AppTextStyle.cairoFontBold(
                              fontSize: 17, myColor: const Color(0xff8D4B55)),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Divider(
                            color: const Color(0xff8D4B55),
                            height: 2.h,
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text(
                          '- $userUnivName ',
                          softWrap: true,
                          textAlign: TextAlign.start,
                          style: AppTextStyle.cairoFontRegular(
                              fontSize: 12, myColor: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 30.h,
                width: double.infinity,
                color: const Color(0xff8D4B55),
              )
            ],
          ),
        ),
      ),
    );
  }
}
