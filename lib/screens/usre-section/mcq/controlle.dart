import 'package:flutter/material.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/mcq/model.dart';

class QuestionControl {
  bool isPressed = false;
  Color isTrue = AppColor.myTeal;
  Color isFalse = Colors.redAccent;
  Color primry = Colors.white;
  bool answered = false;
  String btnText = "Next";
  int score = 0;
  List<QuestionModel> questionsFlutter = [
    QuestionModel(
      "Flutter is not a language; it is an SDK ",
      {
        "TRUE": true,
        "FALSE": false,
        " Can be true or false": false,
        "Can not say": false,
      },
    ),
    QuestionModel("Flutter developed by ? ", {
      "Oracle": false,
      "FaceBook": false,
      "IBM": false,
      "Google": true,
    }),
    QuestionModel("The examples of the Stateless widget are?", {
      "Row": false,
      "Text": false,
      "Column": false,
      "All of the above": true,
    }),
    QuestionModel("Which function is responsible for starting the program?", {
      "runApp()": false,
      "run()": false,
      "flutter()": false,
      "main()": true,
    }),
    QuestionModel("The first alpha version of Flutter was released in ?", {
      "2017": true,
      "2016": false,
      "2015": false,
      "2014": false,
    }),
    QuestionModel("WidgetsApp is used for basic navigation", {
      "TRUE": true,
      "FALSE": false,
      " Can be true or false": false,
      "Can not say": false,
    }),
    QuestionModel(
        "A widget that allows us to refresh the screen is called a ____________.",
        {
          " Stateless widgets": false,
          "Stateful widget": true,
          "Statebuild widget": false,
          "All of the above": false,
        }),
    QuestionModel(
        "Which component allows us to specify the distance between widgets on the screen ? ",
        {
          "SafeArea": false,
          "SizedBox": true,
          "table": false,
          "AppBar": false,
        }),
    QuestionModel(
        "Which release mode will not contain any debugging data when run ?", {
      "Profile": false,
      "Debug": false,
      "Release": true,
      "Test": false,
    }),
    QuestionModel(
        " Which programming language is used to build Flutter applications?", {
      "C++": false,
      "Dart": true,
      "Java": false,
      "python": false,
    }),
  ];
  List<QuestionModel> questionsHTML = [
    QuestionModel(
      "What is HTML?",
      {
        " HTML describes the structure of a webpage": false,
        "HTML consists of a set of elements that helps the browser how to view the conten":
            false,
        " HTML is the standard markup language mainly used to create web pages":
            false,
        "All of the mentioned": true,
      },
    ),
    QuestionModel(" HTML stands for __________ ", {
      "HighText Marking Language": false,
      "HyperText Marking Language": false,
      "HyperText Machine Language": false,
      "HyperText Markup Language": true,
    }),
    QuestionModel(" Who is the father of HTML?", {
      "Sergey Brin": false,
      "Brendan Eich": false,
      " Rasmus Lerdorf": false,
      "Tim Berners-Lee": true,
    }),
    QuestionModel("What is the correct syntax of doctype in HTML5?", {
      "< /doctype html>": false,
      "<doctype html>": false,
      "<doctype html!>": false,
      "<!doctype html>": true,
    }),
    QuestionModel(
        " Which of the following is used to read an HTML page and render it?", {
      "Web server": false,
      "Web network": false,
      "Web browser": true,
      "Web matrix": false,
    }),
    QuestionModel(
        "Which of the following tag is used for inserting the largest heading in HTML?",
        {
          "<h6>": true,
          "head": false,
          "<h5>": false,
          "<h4>": false,
        }),
    QuestionModel("In which part of the HTML metadata is contained?", {
      "title tag": false,
      "head tag": true,
      "HTML tag": false,
      "body tag": false,
    }),
  ];
  List<QuestionModel> questionsCss = [
    QuestionModel(
      "What is CSS?",
      {
        "CSS is a style sheet language": false,
        "CSS is designed to separate the presentation and content, including layout, colors, and fonts":
            false,
        "CSS is the language used to style the HTML documents": false,
        "All of the mentioned": true,
      },
    ),
    QuestionModel(
        "Which of the following tag is used to embed css in html page?", {
      "<css>": false,
      "<!DOCTYPE html>": false,
      "<script>": false,
      "<style>": true,
    }),
    QuestionModel(
        "Which of the following are the CSS Extension Prefixes for Webkit?", {
      "-chrome": false,
      "-web": false,
      "-o-": false,
      "-webkit": true,
    }),
    QuestionModel(
        "Which of the following CSS property sets the font size of text?", {
      "font-size": true,
      "text-size": false,
      "text": false,
      "size": false,
    }),
    QuestionModel(
        "Which of the following is not the property of the CSS box model?", {
      "margin": false,
      "width": false,
      "color": true,
      "height": false,
    }),
  ];

  questionLength(quiz) {
    QuestionControl control1 = QuestionControl();
    if (quiz == 1) {
      return control1.questionsFlutter.length;
    } else if (quiz == 2) {
      return control1.questionsHTML.length;
    } else if (quiz == 3) {
      return control1.questionsCss.length;
    }
  }

  question(quiz, index) {
    QuestionControl control1 = QuestionControl();
    if (quiz == 1) {
      return control1.questionsFlutter[index].question;
    } else if (quiz == 2) {
      return control1.questionsFlutter[index].question;
    } else if (quiz == 3) {
      return control1.questionsCss[index].question;
    }
  }

  questionValue(quiz, index, item) {
    QuestionControl control1 = QuestionControl();
    if (quiz == 1) {
      return control1.questionsFlutter[index].answers!.values.toList()[item];
    } else if (quiz == 2) {
      return control1.questionsHTML[index].answers!.values.toList()[item];
    } else if (quiz == 3) {
      return control1.questionsCss[index].answers!.values.toList()[item];
    }
  }

  questionKey(quiz, index, item) {
    QuestionControl control1 = QuestionControl();
    if (quiz == 1) {
      return control1.questionsFlutter[index].answers!.keys.toList()[item];
    } else if (quiz == 2) {
      return control1.questionsHTML[index].answers!.keys.toList()[item];
    } else if (quiz == 3) {
      return control1.questionsCss[index].answers!.keys.toList()[item];
    }
  }
}
