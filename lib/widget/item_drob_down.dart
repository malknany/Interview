import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/screens/usre-section/resume_steber/control.dart';

import '../core/style/text_style.dart';
import '../core/utils/app_color.dart';

class ItemDropDownWidget extends StatefulWidget {
  ItemDropDownWidget(
      {Key? key, required this.listOfName, required this.hintText})
      : super(key: key);
  final List<String> listOfName;
  final String hintText;
  String dropdownValue = "";

  @override
  State<ItemDropDownWidget> createState() => _ItemDropDownWidgetState();
}

class _ItemDropDownWidgetState extends State<ItemDropDownWidget> {
  final ResumeStepperControl _resumeStepperControl = ResumeStepperControl();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      height: 70.h,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10.r), boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.25),
          offset: const Offset(2, 4),
          blurRadius: 2,
        )
      ]),
      child: DropdownButtonFormField(

        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                  strokeAlign: BorderSide.strokeAlignInside,
                  width: 1.w,
                  color: AppColor.borderTextFiled)),
          contentPadding:
              EdgeInsets.only(left: 30.w, top: 15.h, bottom: 15.h, right: 22.w),
          hintText: widget.hintText,
          hintStyle: AppTextStyle.cairoFontBold(
              fontSize: 20, myColor: AppColor.textFiledColor.withOpacity(0.86)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                  strokeAlign: BorderSide.strokeAlignInside,
                  width: 1.w,
                  color: AppColor.borderTextFiled)),
          filled: true,
          fillColor: Colors.white,
        ),
        isExpanded: true,
        iconDisabledColor: AppColor.borderTextFiled,
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        onChanged: (String? newValue) {
          setState(() {
            _resumeStepperControl.degree = newValue!;
          });
        },
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: 35,
        items:
        widget.listOfName.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: AppTextStyle.cairoFontRegular(
                  fontSize: 25, myColor: AppColor.myTeal),
            ),
          );
        }).toList(),
      ),
    );
  }
}
