import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/resume_steber/widget/item_textformfiled_cv.dart';
import 'package:interview_project/widget/item_chip.dart';
import 'package:interview_project/widget/item_drob_down.dart';

class ResumeStepperControl {
  final name = TextEditingController();
  final jobTitle = TextEditingController();
  final email = TextEditingController();
  final address = TextEditingController();
  final phone = TextEditingController();
  final universityName = TextEditingController();
  final period = TextEditingController();
  final link = TextEditingController();
  final description = TextEditingController();
  final language = TextEditingController();
  final tSkills = TextEditingController();
  final nTSkills = TextEditingController();
  final certificates = TextEditingController();
  String degree = '';
  int currentStep = 0;
  List<String> listOfTSkills = [];
  List<String> listOfNTSkills = [];
  List<String> listOfLanguage = [];

  getSteps() {
    return [
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: Text(
          'Personality',
          style: AppTextStyle.cairoFontBold(
              fontSize: 15, myColor: AppColor.myGraySubTitle),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Name',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemCvTextformField(
                inputType: TextInputType.text, textEditingController: name),
            Text(
              'Job Title',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemCvTextformField(textEditingController: jobTitle),
            Text(
              'E-mail',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemCvTextformField(
                inputType: TextInputType.emailAddress,
                textEditingController: email),
            Text(
              'Address',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemCvTextformField(
                inputType: TextInputType.streetAddress,
                textEditingController: address),
            Text(
              'Phone',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemCvTextformField(
                inputType: TextInputType.phone, textEditingController: phone),
          ],
        ),
      ),
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: Text(
          'Education',
          style: AppTextStyle.cairoFontBold(
              fontSize: 15, myColor: AppColor.myGraySubTitle),
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'University Name',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemCvTextformField(textEditingController: universityName),
            Text(
              'Degree of Certificates',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemDropDownWidget(listOfName: const [
              'Excellent',
              'Very Good',
              'Good',
              'Accept',
            ], hintText: ''),
            Text(
              'Graduation year',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemDropDownWidget(listOfName: const [
              '2027',
              '2026',
              '2025',
              '2024',
              '2023',
              '2022',
              '2021',
              '2020',
              '2019'
            ], hintText: ''),
          ],
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: Text(
          'Language',
          style: AppTextStyle.cairoFontBold(
              fontSize: 15, myColor: AppColor.myGraySubTitle),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Native language',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemChip(
              textEditingController: language,
              values: listOfLanguage,
            ),
            Text(
              'your Level',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemDropDownWidget(
                listOfName: const ['C+', 'C', 'C-'], hintText: ''),
            SizedBox(
              height: 15.h,
            ),
          ],
        ),
      ),
      Step(
        state: currentStep > 3 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 3,
        title: Text(
          'Experience',
          style: AppTextStyle.cairoFontBold(
              fontSize: 15, myColor: AppColor.myGraySubTitle),
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Your Technical Skills',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemChip(textEditingController: tSkills, values: listOfTSkills),
            Text(
              'your Non Technical Skills',
              style: AppTextStyle.cairoFontBold(
                  fontSize: 20, myColor: AppColor.myTeal),
            ),
            ItemChip(textEditingController: nTSkills, values: listOfNTSkills),
          ],
        ),
      ),
      Step(
          state: currentStep > 4 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 4,
          title: Text(
            'Certificates',
            style: AppTextStyle.cairoFontBold(
                fontSize: 15, myColor: AppColor.myGraySubTitle),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Certificates',
                style: AppTextStyle.cairoFontBold(
                    fontSize: 20, myColor: AppColor.myTeal),
              ),
              ItemCvTextformField(textEditingController: certificates),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Certificate period',
                style: AppTextStyle.cairoFontBold(
                    fontSize: 20, myColor: AppColor.myTeal),
              ),
              ItemCvTextformField(
                  inputType: TextInputType.datetime,
                  textEditingController: period),
              Text(
                'Link for your own projects',
                style: AppTextStyle.cairoFontBold(
                  fontSize: 20,
                  myColor: AppColor.myTeal,
                ),
              ),
              ItemCvTextformField(
                  inputType: TextInputType.url, textEditingController: link),
              Text(
                'Description',
                style: AppTextStyle.cairoFontBold(
                  fontSize: 20,
                  myColor: AppColor.myTeal,
                ),
              ),
              ItemCvTextformField(
                inputType: TextInputType.multiline,
                textEditingController: description,
              ),
            ],
          )),
    ];
  }
}
