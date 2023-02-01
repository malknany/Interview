import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/style/text_style.dart';
import '../../core/utils/app_color.dart';
import '../../widget/item_button.dart';
import '../../widget/item_textformfield.dart';
import '../education_side/view.dart';

class PersonalSideScreen extends StatefulWidget {
  const PersonalSideScreen({Key? key}) : super(key: key);

  @override
  State<PersonalSideScreen> createState() => _PersonalSideScreenState();
}

int currentStep = 0;

class _PersonalSideScreenState extends State<PersonalSideScreen> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const Icon(Icons.arrow_back_ios_new,
                            color: Colors.teal),
                        // TODO:  Add InkWell Here After Navigation
                        SizedBox(width: 105.w),
                        SizedBox(
                          height: 25.h,
                        ),
                        Text(
                          'Your Resume ',
                          textAlign: TextAlign.center,
                          style: AppTextStyle.cairoFontBold(
                            fontSize: 24,
                            myColor: AppColor.myTeal,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 50.h,
                      ),
                      // Theme(
                      //   data: Theme.of(context).copyWith(
                      //     colorScheme:
                      //         ColorScheme.light(primary: AppColor.myTeal),
                      //   ),
                      //   child: Stepper(
                      //     type: StepperType.horizontal,
                      //     steps: getSteps(),
                      //     currentStep: currentStep,
                      //     onStepContinue: () {
                      //       final isLastStep =
                      //           currentStep == getSteps().length - 1;
                      //       if (isLastStep) {
                      //         print("finish");
                      //         // send data to server
                      //       } else {
                      //         setState(() => currentStep += 1);
                      //       }
                      //     },
                      //     onStepCancel: () {
                      //       currentStep == 0
                      //           ? null
                      //           : () => setState(() => currentStep -= 1);
                      //     },
                      //   ),
                      // ),
                      Text(
                        'Name',
                        textAlign: TextAlign.start,
                        style: AppTextStyle.cairoFontBold(
                          fontSize: 24,
                          myColor: AppColor.myTeal,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const ItemTextFormFiled(),
                      Text(
                        'E-mail',
                        textAlign: TextAlign.start,
                        style: AppTextStyle.cairoFontBold(
                          fontSize: 24,
                          myColor: AppColor.myTeal,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const ItemTextFormFiled(),
                      Text(
                        'Address',
                        textAlign: TextAlign.start,
                        style: AppTextStyle.cairoFontBold(
                          fontSize: 24,
                          myColor: AppColor.myTeal,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const ItemTextFormFiled(),
                      Text(
                        'Phone',
                        textAlign: TextAlign.start,
                        style: AppTextStyle.cairoFontBold(
                          fontSize: 24,
                          myColor: AppColor.myTeal,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      const ItemTextFormFiled(),
                      Text(
                        'Date of birth',
                        textAlign: TextAlign.start,
                        style: AppTextStyle.cairoFontBold(
                          fontSize: 24,
                          myColor: AppColor.myTeal,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      ItemTextFormFiled(
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.calendar_month,
                            color: Colors.teal,
                            size: 25,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),

                      const ItemButtonWidget(text: 'NEXT', nextPage: EducationSideScreen()),
                    ]))));
  }
}

//
//               SizedBox(
//                 height: 25.h,
//               ),

//               SizedBox(
//                 height: 17.h,
//               ),
//               ItemTextFormFiled(
//                 // controller: dateInput,
//
//                 suffixIcon: IconButton(
//                   icon: const Icon(
//                     Icons.calendar_month,
//                     color: Colors.blueGrey,
//                     size: 30,
//                   ),
//                   onPressed: ()async {
//                  DateTime? pickedDate=await showDatePicker(
//                      context: context,
//                      initialDate: DateTime.now(),
//                      firstDate: DateTime(2000),
//                      lastDate: DateTime(2022),
//                  );
//                  // if (pickedDate!=null){
//                  //   print(pickedDate);
//                  //   String formattedDate=DateFormat ('dd/mm/yy').format(pickedDate);
//                  //   print(formattedDate);
//                  //   setState(() {
//                  //     dateInput.text=formattedDate;
//                  //   });
//                  // }else {}
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 17.h,
//               ),
//             ],
//
//           ),
//         ]
//         ),
//       ),),
//     );
//   }
//
List<Step> getSteps() => [
      Step(
        isActive: currentStep >= 0,
        title: const Text("Personaly"),
        content: Container(),
      ),
      Step(
        isActive: currentStep >= 1,
        title: const Text("Education"),
        content: Container(),
      ),
      Step(
        isActive: currentStep >= 2,
        title: const Text("Language"),
        content: Container(),
      ),
      Step(
        isActive: currentStep >= 3,
        title: const Text("Experience"),
        content: Container(),
      ),
      Step(
        isActive: currentStep >= 4,
        title: const Text("Certificates"),
        content: Container(),
      ),
    ];
