import 'package:interview_project/screens/usre-section/mcq/model.dart';

class QuestionControl {
  List<QuestionModel> questions = [
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
}
