import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/mcq/controlle.dart';
import 'package:interview_project/screens/usre-section/mcq/result.dart';
import 'package:interview_project/widget/item_button.dart';

class QuizFlutter extends StatefulWidget {
 const QuizFlutter({Key? key, required this.quiz}) : super(key: key);
  final int quiz;

  @override
  State<QuizFlutter> createState() => _QuizFlutterState();
}

class _QuizFlutterState extends State<QuizFlutter> {
  final QuestionControl _control = QuestionControl();
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SafeArea(
          child: PageView.builder(
            controller: _pageController,
            itemCount: _control.questionLength(widget.quiz),
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (page) {
              if (page == (_control.questionLength(widget.quiz) - 1)) {
                setState(() {
                  _control.btnText = "See Results";
                });
              }
              setState(() {
                _control.answered = false;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Spacer(),
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
                      ' ${index + 1} of ${_control.questionLength(widget.quiz)} ',
                      style: AppTextStyle.cairoFontBold(
                        fontSize: 20,
                        myColor: AppColor.textColorGrayOfSubTitle,
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      '${_control.question(widget.quiz, index)}',
                      style: AppTextStyle.cairoFontSimBold(
                        fontSize: 28,
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
                          onTap: !_control.answered
                              ? () {
                                  if (_control.questionValue(
                                      widget.quiz, index, item)) {
                                    _control.score++;
                                  }
                                  setState(() {
                                    _control.isPressed = true;
                                    _control.answered = true;
                                  });
                                }
                              : null,
                          child: Container(
                            height: 80.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: _control.isPressed
                                  ? _control.questionValue(
                                          widget.quiz, index, item)
                                      ? _control.isTrue
                                      : _control.primry
                                  : _control.primry,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(
                                  color: const Color(0xffE0E0E0), width: 1.5.w),
                            ),
                            child: Center(
                              child: Text(
                                '${_control.questionKey(widget.quiz, index, item)}',
                                softWrap: true,
                                textAlign: TextAlign.center,
                                style: AppTextStyle.cairoFontSimBold(
                                    fontSize: 20,
                                    myColor: _control.isPressed
                                        ? Colors.white
                                        : AppColor.myTeal),
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
                      text: _control.btnText,
                      nextPage: () {
                        if (_pageController.page?.toInt() ==
                            _control.questionLength(widget.quiz) - 1) {
                          navigateTo(
                              context,
                              ResultScreen(
                                score: _control.score,
                                quiz: widget.quiz,
                              ));
                        } else {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linearToEaseOut,
                          );
                          setState(
                            () {
                              _control.isPressed = false;
                            },
                          );
                        }
                      },
                    ),
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
