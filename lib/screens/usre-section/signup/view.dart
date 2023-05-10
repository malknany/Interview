import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/core/utils/app_strings.dart';
import 'package:interview_project/screens/usre-section/inof_from_user/view.dart';
import 'package:interview_project/screens/usre-section/login/view.dart';
import 'package:interview_project/screens/usre-section/login/widget/text_in_line.dart';
import 'package:interview_project/screens/usre-section/signup/cubit.dart';
import 'package:interview_project/screens/usre-section/signup/states.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';
import 'package:interview_project/widget/item_button.dart';
import 'package:interview_project/widget/item_drob_down.dart';

import '../../../widget/item_textformfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: Scaffold(
        body: BlocListener<RegisterCubit, RegisterStates>(
          listener: (context, state) {
            if (State is RegisterSuccessState) {
              print("NAVIGATE TO HOME");
            } else if (State is RegisterErrorState) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("Error")));
            }
          },
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SingleChildScrollView(
                  child: Builder(
                    builder: (context) {
                      final cubit = BlocProvider.of<RegisterCubit>(context);
                      return Form(
                        key: cubit.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 24.h,
                            ),
                            Text(
                              'Sign up',
                              style: AppTextStyle.cairoFontBold(
                                  fontSize: 45, myColor: AppColor.myTeal),
                            ),
                            Text(
                              'create a new account',
                              style: AppTextStyle.cairoFontSimBold(
                                fontSize: 20,
                                myColor: AppColor.textColorGray,
                              ),
                            ),
                            ItemTextFormFiled(
                              onSaved: (v) => cubit.Firstname = v,
                              hintText: 'First name',
                              validator: (v) {
                                if (v == null || v.isEmpty) {
                                  return "First name Can Not Be Empty!";
                                }

                                return null;
                              },
                            ),
                            ItemTextFormFiled(
                              onSaved: (v) => cubit.Lastname = v,
                              hintText: 'Last name',
                              validator: (v) {
                                if (v == null || v.isEmpty) {
                                  return "Last name Can Not Be Empty!";
                                }

                                return null;
                              },
                            ),
                            ItemTextFormFiled(
                              onSaved: (v) => cubit.Enteryouremail = v,
                              hintText: 'Enter your email',
                              validator: (v) {
                                if (v == null || v.isEmpty) {
                                  return "Email Can Not Be Empty!";
                                } else if (!v.contains("@")) {
                                  return "Email Must Be Contains @";
                                }

                                return null;
                              },
                            ),
                            ItemTextFormFiled(
                              onSaved: (v) => cubit.Password = v,
                              hintText: 'Password',
                              validator: (v) {
                                if (v == null || v.isEmpty) {
                                  return "Password Can Not Be Empty!";
                                } else if (v.length < 6) {
                                  return "Password Must Be at least 6 Character";
                                }

                                return null;
                              },
                            ),
                            ItemDropDownWidget(
                                listOfName: const ["Famel", "Male"],
                                hintText: "Gender"),
                            ItemTextFormFiled(
                              onSaved: (v) => cubit.Phone = v,
                              hintText: 'Phone',
                              validator: (v) {
                                if (v == null || v.isEmpty) {
                                  return "Phone Can Not Be Empty!";
                                } else if (!v.startsWith("+201")) {
                                  return "Phone Must Start With +201 ";
                                }

                                return null;
                              },
                            ),
                            BlocBuilder<RegisterCubit, RegisterStates>(
                              builder: (context, State) {
                                if (State is RegisterLoadingState) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }

                                return ItemButtonWidget(
                                    text: 'Register',
                                    nextPage: () {
                                      cubit.register();
                                      navigateToAndRemoveUntil(
                                        context,
                                        page: const UpLoadPhotoScreen(
                                            nextPage: InfoFromUser()),
                                      );
                                    });
                              },
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Already have an account? ",
                                  style: AppTextStyle.cairoFontBold(
                                      fontSize: 20,
                                      myColor: AppColor.textColorGray),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    navigateToAndRemoveUntil(
                                      context,
                                      page: const LogInScreen(),
                                    );
                                  },
                                  child: Text(
                                    'login',
                                    style: TextStyle(
                                      fontFamily: AppStrings.fontCairo,
                                      fontSize: 20.sp,
                                      color: AppColor.textColorGray,
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColor.textColorGray,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            const TextInLine(),
                            SizedBox(
                              height: 20.h,
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
                            SizedBox(
                              height: 20.h,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
