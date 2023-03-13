import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:quickalert/quickalert.dart';

class ShowAlert{
  static showAlertConfirm(context,Widget nextPage) {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.confirm,
        borderRadius: 50.r,
        onConfirmBtnTap: () => navigateTo(context, nextPage),
        onCancelBtnTap: () => Navigator.pop(context),
        title: 'Virtual Interview',
        cancelBtnText: 'Cancel',
        cancelBtnTextStyle: AppTextStyle.cairoFontRegular(fontSize: 18, myColor: AppColor.myTeal),
        confirmBtnText: 'Start',
        confirmBtnTextStyle:
        AppTextStyle.cairoFontRegular(fontSize: 18, myColor: Colors.white),
        confirmBtnColor: AppColor.myTeal,
        animType: QuickAlertAnimType.scale,
        titleColor: AppColor.myTeal,
        text: 'Are You Ready For Virtual Interview ?',
        textColor: AppColor.textColorGray.withOpacity(0.86)
      //showCancelBtn: true,
    );
  }
  static showAlertWaring(context,Widget nextPage){
    QuickAlert.show(
      context: context,
      type: QuickAlertType.warning,
      showCancelBtn: true,
      borderRadius: 50.r,
      onConfirmBtnTap: () => navigateToAndRemoveUntil(context, page: nextPage),
      onCancelBtnTap: () => Navigator.pop(context),
      cancelBtnText: 'No',
      cancelBtnTextStyle: AppTextStyle.cairoFontRegular(
        myColor: AppColor.textColorGray.withOpacity(0.86),
        fontSize: 20,
      ),
      confirmBtnText: 'Yes',
      confirmBtnTextStyle:
          AppTextStyle.cairoFontRegular(fontSize: 20, myColor: Colors.white),
      confirmBtnColor: AppColor.myTeal,
      animType: QuickAlertAnimType.scale,
      //titleColor: AppColor.myTeal,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
                'Are You Sure you want to leave this meeting',
                textAlign: TextAlign.center,
                style: AppTextStyle.cairoFontBold(
                    fontSize: 22,
                    myColor: AppColor.myTeal)),
          )
        ],
      ),
    );
  }
}