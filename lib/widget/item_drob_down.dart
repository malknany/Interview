import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/style/text_style.dart';
import '../core/utils/app_color.dart';

class ItemDropDownWidget extends StatefulWidget {
  const  ItemDropDownWidget({Key? key,required this.listOfName,required this.hintText}) : super(key: key);
  final List<String> listOfName;
  final String hintText;

  @override
  State<ItemDropDownWidget> createState() => _ItemDropDownWidgetState();
}

class _ItemDropDownWidgetState extends State<ItemDropDownWidget> {
  String dropdownValue = "";

  @override
  Widget build(BuildContext context) {
    return Container(
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
            dropdownValue = newValue!;
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
