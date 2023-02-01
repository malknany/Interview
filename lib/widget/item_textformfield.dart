import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';

import '../core/utils/app_color.dart';

class ItemTextFormFiled extends StatefulWidget {
  const ItemTextFormFiled(
      {Key? key,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.secure = false,
      this.validator,
      this.onChanged,
         this.controller})
      : super(key: key);
  final String? hintText;

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool secure;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
final TextEditingController? controller;
  @override
  State<ItemTextFormFiled> createState() => _ItemTextFormFiledState();
}

class _ItemTextFormFiledState extends State<ItemTextFormFiled> {
  late bool secure;

  @override
  void initState() {
    secure = widget.secure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            offset: const Offset(2, 4),
            blurRadius: 2,),
        ]),
      child: TextFormField(
         controller:widget.controller,
        cursorColor: AppColor.myTeal,
        obscureText: secure,
        decoration: InputDecoration(
            suffixIcon: widget.secure
                ? IconButton(
                    // TODO:  Change these icons later
                    icon: Icon(secure
                        ? Icons.dnd_forwardslash_rounded
                        : Icons.remove_red_eye),
                    onPressed: () {
                      secure = !secure;
                      setState(() {});
                    },
                  )
                : widget.suffixIcon,
            prefixIcon: widget.prefixIcon,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.r),
                borderSide: BorderSide(
                    strokeAlign: BorderSide.strokeAlignInside,
                    width: 1.w,
                    color: AppColor.myTeal)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                    strokeAlign: BorderSide.strokeAlignInside,
                    width: 1.w,
                    color: AppColor.borderTextFiled)),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsets.only(left: 30.w, top: 15.h, bottom: 15.h),
            hintText: widget.hintText,
            hintStyle: AppTextStyle.cairoFontBold(
                fontSize: 20, myColor: AppColor.textFiledColor)),
      ),
    );
  }
}
