import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/mcq/controlle.dart';
import 'package:interview_project/screens/usre-section/mcq/result.dart';
import 'package:interview_project/widget/item_button.dart';

class QuizFlutter extends StatefulWidget {
  const QuizFlutter({Key? key}) : super(key: key);

  @override
  State<QuizFlutter> createState() => _QuizFlutterState();
}

class _QuizFlutterState extends State<QuizFlutter> {
  QuestionControl _control = QuestionControl();
  PageController _pageController = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = AppColor.myTeal;
  Color isFalse = Colors.redAccent;
  Color primry = Colors.white;
  bool answered = false;
  String btnText = "Next";
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.w),
          child: PageView.builder(
            controller: _pageController,
            itemCount: _control.questions.length,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (page) {
              if (page == _control.questions.length - 1) {
                setState(() {
                  btnText = "See Results";
                });
              }
              setState(() {
                answered = false;
              });
            },
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.clear,
                            color: AppColor.myTeal,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Text(
                    ' ${index + 1} of ${_control.questions.length} ',
                    style: AppTextStyle.cairoFontBold(
                      fontSize: 20.sp,
                      myColor: AppColor.textColorGrayOfSubTitle,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    '${_control.questions[index].question}',
                    style: AppTextStyle.cairoFontSimBold(
                      fontSize: 28.sp,
                      myColor: AppColor.myTeal,
                    ),
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Column(
                    children: List.generate(
                      4,
                      (item) => InkWell(
                        onTap: !answered
                            ? () {
                                if (_control.questions[index].answers!.values
                                    .toList()[item]) {
                                  score++;
                                  print("yes");
                                } else {
                                  print("no");
                                }
                                setState(() {
                                  isPressed = true;
                                  answered = true;
                                });
                              }
                            : null,
                        child: Container(
                          height: 74.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: isPressed
                                ? _control.questions[index].answers!.values
                                        .toList()[item]
                                    ? isTrue
                                    : primry
                                : primry,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                                color: Color(0xffE0E0E0), width: 1.5.w),
                          ),
                          child: Center(
                            child: Text(
                              '${_control.questions[index].answers!.keys.toList()[item]}',
                              softWrap: true,
                              style: AppTextStyle.eBFontSemBold(
                                  fontSize: 26.sp, myColor:isPressed?Colors.white:AppColor.myTeal),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 76.h,
                  ),
                  ItemButtonWidget(
                    text: btnText,
                    nextPage: () {
                      if (_pageController.page?.toInt() ==
                          _control.questions.length - 1) {
                        navigateTo(context, ResultScreen(score: score));
                      } else {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 750),
                          curve: Curves.bounceIn,
                        );
                        setState(
                          () {
                            isPressed = false;
                          },
                        );
                      }
                    },
                  ),
                ],
              );
            },
          ),
        )),
      ),
    );
  }
}
