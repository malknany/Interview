import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/widget/item_button.dart';
import 'package:interview_project/widget/item_drob_down.dart';

class CompAddAdvertisementScreen extends StatefulWidget {
  const CompAddAdvertisementScreen({Key? key}) : super(key: key);

  @override
  State<CompAddAdvertisementScreen> createState() =>
      _CompAddAdvertisementScreenState();
}

class _CompAddAdvertisementScreenState
    extends State<CompAddAdvertisementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.myTeal,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('assets/image/lucidya_Logo.png')),
                Text(
                  'Job Title',
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 20,
                    myColor: AppColor.myTeal,
                  ),
                ),
                const ItemDropDownWidget(
                    listOfName: ['Flutter', 'web', 'AI', 'Data Since'],
                    hintText: ''),
                Text(
                  'Employment Type',
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 20,
                    myColor: AppColor.myTeal,
                  ),
                ),
                const ItemDropDownWidget(
                    listOfName: ['Full time', 'remote'], hintText: ''),
                Text(
                  'Salary',
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 20,
                    myColor: AppColor.myTeal,
                  ),
                ),
                const ItemDropDownWidget(listOfName: [
                  'Less then 1000',
                  '1000',
                  '1500',
                  '2000',
                  '2500',
                  '3000',
                  '3500',
                  'More then 10,000'
                ], hintText: ''),
                Text(
                  'Location',
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 20,
                    myColor: AppColor.myTeal,
                  ),
                ),
                const ItemDropDownWidget(listOfName: [
                  "Cairo",
                  "Alexandria",
                  "Gizeh",
                  "Port Said",
                  "Suez",
                  "Luxor",
                  "Al-Mansura",
                  "El-Mahalla El-Kubra",
                  "Tanta",
                  "	Asyut"
                ], hintText: ''),
                Text(
                  'Skills and Experience',
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 20,
                    myColor: AppColor.myTeal,
                  ),
                ),
                const ItemDropDownWidget(
                    listOfName: ['Flutter', 'web', 'AI', 'Data Since'],
                    hintText: ''),
                Text(
                  'Job Details',
                  style: AppTextStyle.cairoFontBold(
                    fontSize: 20,
                    myColor: AppColor.myTeal,
                  ),
                ),
                Container(
                  height: 154.h,
                  margin: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
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
                    //expands: true,
                    keyboardType: TextInputType.text,
                    minLines: 10,
                    maxLines: 10,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.r),
                        borderSide: BorderSide(
                          strokeAlign: BorderSide.strokeAlignInside,
                          width: 1.w,
                          color: AppColor.myTeal,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          strokeAlign: BorderSide.strokeAlignInside,
                          width: 1.w,
                          color: AppColor.borderTextFiled,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                ItemButtonWidget(text: 'Upload', nextPage: () {}),
                SizedBox(
                  height: 19.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
