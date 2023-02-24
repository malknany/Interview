import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/final_cv_templet/view.dart';
import 'package:interview_project/screens/usre-section/resume_steber/control.dart';

class ResumeStepper extends StatefulWidget {
  const ResumeStepper({Key? key}) : super(key: key);

  @override
  State<ResumeStepper> createState() => _ResumeStepperState();
}

class _ResumeStepperState extends State<ResumeStepper> {
  final _resumeStepperControl = ResumeStepperControl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Your Resume ',
          style: AppTextStyle.cairoFontBold(
              fontSize: 20, myColor: AppColor.myTeal),
        ),
        centerTitle: true,
        foregroundColor: AppColor.myTeal,
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(primary: AppColor.myDarkTeal),
        ),
        child: SizedBox(
          width: double.infinity,
          child: Stepper(
            elevation: 0,
            steps: _resumeStepperControl.getSteps(),
            currentStep: _resumeStepperControl.currentStep,
            type: StepperType.vertical,
            onStepCancel: () => _resumeStepperControl.currentStep == 0
                ? null
                : setState(() {
                    _resumeStepperControl.currentStep -= 1;
                  }),
            onStepContinue: () {
              bool isLastStep = (_resumeStepperControl.currentStep ==
                  _resumeStepperControl.getSteps().length - 1);
              if (isLastStep) {
                navigateTo(
                    context,
                    FinalCvTempletScreen(
                      userListOfSkills: _resumeStepperControl.listOfTSkills,
                      userListOfLanguage: _resumeStepperControl.listOfLanguage,
                      userDescription: _resumeStepperControl.description.text,
                      userCertificates: _resumeStepperControl.certificates.text,
                      userPeriod: _resumeStepperControl.period.text,
                      userName: _resumeStepperControl.name.text,
                      userJobTitle: _resumeStepperControl.jobTitle.text,
                      userEmail: _resumeStepperControl.email.text,
                      userAddress: _resumeStepperControl.address.text,
                      userPhone: _resumeStepperControl.phone.text,
                      userLink: _resumeStepperControl.link.text,
                      userUnivName: _resumeStepperControl.universityName.text,
                    ));
                print("Final Ui");
                //Do something with this information
              } else {
                setState(() {
                  _resumeStepperControl.currentStep += 1;
                });
              }
            },
            onStepTapped: (step) => setState(() {
              _resumeStepperControl.currentStep = step;
            }),
            controlsBuilder: (context, details) {
              return Container(
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      onPressed: details.onStepContinue,
                      child: Text(
                        _resumeStepperControl.currentStep == 4
                            ? 'Finish'
                            : 'Next',
                        style:
                            const TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    )),
                    if (_resumeStepperControl.currentStep != 0)
                      SizedBox(
                        width: 15.w,
                      ),
                    if (_resumeStepperControl.currentStep != 0)
                      Expanded(
                          child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: details.onStepCancel,
                        child: Text(
                          'Back',
                          style:
                              TextStyle(fontSize: 13, color: AppColor.myTeal),
                        ),
                      )),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
