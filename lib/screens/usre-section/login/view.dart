import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/homepage/view.dart';
import 'package:interview_project/screens/usre-section/login/widget/text_in_line.dart';
import 'package:interview_project/screens/usre-section/signup/view.dart';
import 'package:interview_project/widget/item_button.dart';
import 'package:http/http.dart' as http;
import '../../../widget/item_textformfield.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool checkBox = false;

  // String? email, password;
  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 24.h,
                ),
                Image.asset('assets/image/login.png'),
                SizedBox(
                  height: 30.8.h,
                ),
                ItemTextFormFiled(
                  controller: emailController,
                  hintText: 'enter your email',
                  // onChanged: (v) => email = v,
                ),
                SizedBox(
                  height: 35.h,
                ),
                ItemTextFormFiled(
                  controller: passController,
                  hintText: 'password',
                  // onChanged: (v) => password = v,
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: checkBox,
                      onChanged: (_) {
                        checkBox = !checkBox;
                        setState(() {});
                      },
                      activeColor: AppColor.myTeal,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.r),
                          side: BorderSide(color: AppColor.borderTextFiled)),
                    ),
                    Text(
                      'Keep me logged in ',
                      // 16 textLoginColor
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 16, myColor: AppColor.textLoginColor),
                    ),
                    const Spacer(),
                    Text(
                      'Forget password?',
                      style: AppTextStyle.cairoFontSimBold(
                          fontSize: 16, myColor: AppColor.textLoginColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                ItemButtonWidget(
                    text: 'Login',
                    nextPage: () {
                      HomePageScreen();
                    }),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account?",
                      // 20 textColorGray bold eb
                      style: AppTextStyle.cairoFontBold(
                          fontSize: 20, myColor: AppColor.textColorGray),
                    ),
                    SizedBox(
                      width: 11.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const SignUpScreen());
                      },
                      child: Text(
                        'sign up',
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColor.textColorGray,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.textColorGray,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21.h,
                ),
                const TextInLine(),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/image/google.png',
                      width: 55.w,
                      height: 60.h,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Image.asset(
                      'assets/image/facebook.png',
                      width: 74.w,
                      height: 68.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }

  // CREATE FUNCTION TO CALL LOGIN POST API
  Future<void> login() async {
    if (passController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var response = await http.post(Uri.parse(" uri      "),
          //PASSING 2 PARAMETERS INSIDE BODY
          body: ({
            "email": emailController.text,
            "password": passController.text
          }));
      if(response.statusCode==200){

      }else{
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Invalid Credentials.")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Black Field Not Allowed")));
    }
  }
}
