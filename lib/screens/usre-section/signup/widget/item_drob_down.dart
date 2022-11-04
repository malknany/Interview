import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/text_style.dart';
import '../../../../core/utils/app_color.dart';
class ItemDropDownWidget extends StatefulWidget {
  const ItemDropDownWidget({Key? key}) : super(key: key);

  @override
  State<ItemDropDownWidget> createState() => _ItemDropDownWidgetState();
}

class _ItemDropDownWidgetState extends State<ItemDropDownWidget> {

  String dropdownValue="";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              offset: const Offset(2, 4),
              blurRadius: 2,)
          ]
      ),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                  strokeAlign: StrokeAlign.inside,
                  width: 1.w,
                  color: AppColor.borderTextFiled)),
          contentPadding: EdgeInsets.only(left: 30.w, top: 15.h, bottom: 15.h,right: 22.w),
          hintText: 'Gender',
          hintStyle: AppTextStyle.cairoFontBold(
              fontSize: 20, myColor: AppColor.textFiledColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(
                  strokeAlign: StrokeAlign.inside,
                  width: 1.w,
                  color: AppColor.borderTextFiled)),
          filled: true,
          fillColor: Colors.white,
        ),
        isExpanded: true,
        iconDisabledColor: AppColor.borderTextFiled,
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        //itemHeight: 10.h,
        //value: dropdownValue,
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        icon: const Icon(Icons.keyboard_arrow_down_rounded),
        iconSize: 35,
        items: <String>['Male', 'Female',]
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: AppTextStyle.eBFontBold(fontSize: 25.sp, myColor: AppColor.myTeal),
            ),
          );
        }).toList(),
      ),
    );
  }
}
