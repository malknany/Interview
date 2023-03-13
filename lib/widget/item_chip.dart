import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';

class ItemChip extends StatefulWidget {
  const ItemChip(
      {Key? key, required this.textEditingController, required this.values})
      : super(key: key);
  final TextEditingController textEditingController;
  final List<String> values;

  @override
  State<ItemChip> createState() => _ItemChipState();
}

class _ItemChipState extends State<ItemChip> {
  //final List<String> _values = [];

  _onDelete(index) {
    setState(() {
      widget.values.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                offset: const Offset(2, 4),
                blurRadius: 2,
              )
            ],
          ),
          child: TextFormField(
            onFieldSubmitted: (value) {
              setState(() {
                widget.values.add(value);
              });
            },
            //focusNode: _focusNode,
            controller: widget.textEditingController,
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  widget.textEditingController.clear();
                },
                child: Icon(
                  Icons.clear,
                  color: AppColor.myTeal,
                ),
              ),
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
            ),
          ),
        ),
        Wrap(
          spacing: 10.w,
          runSpacing: 5.h,
          children: List.generate(
              widget.values.length,
              (index) => _Chip(
                  label: widget.values[index],
                  onDeleted: _onDelete,
                  index: index)),
        )
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({
    required this.label,
    required this.onDeleted,
    required this.index,
  });

  final String label;
  final ValueChanged<int> onDeleted;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: AppColor.myTeal,
      labelStyle:
          AppTextStyle.cairoFontRegular(fontSize: 20, myColor: Colors.white),
      elevation: 0,
      labelPadding: const EdgeInsets.only(left: 8.0),
      label: Text(label),
      deleteIcon: const Icon(
        Icons.close,
        size: 18,
        color: Colors.white,
      ),
      onDeleted: () {
        onDeleted(index);
      },
    );
  }
}
