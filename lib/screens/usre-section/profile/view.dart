import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:interview_project/core/app-rout/navigate.dart';
import 'package:interview_project/core/style/text_style.dart';
import 'package:interview_project/core/utils/app_color.dart';
import 'package:interview_project/screens/usre-section/hiring/widget/list_tile_user.dart';
import 'package:interview_project/screens/usre-section/profile/controle.dart';
import 'package:interview_project/screens/usre-section/upload_photo/view.dart';

import '../profile_edite/view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController _profileController = ProfileController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Spacer(),
                  Expanded(
                    child: Text('Profile',
                        style: AppTextStyle.cairoFontBold(
                            fontSize: 28, myColor: Colors.black,),),
                  ),
                  IconButton(icon: Icon(Icons.edit,color: AppColor.myTeal),onPressed: (){
                    navigateTo(context, const ProfileEditeScreen());
                  },),
                ],
              ),
              UpLoadPhotoScreen.imageSlecte == null
                  ? CircleAvatar(
                maxRadius: 50.r,
                      backgroundImage: const AssetImage('assets/image/profile_image.png'),
                    )
                  : Container(
                      width: 50.w,
                      height: 50.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: AppColor.myDarkTeal,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Image.file(
                          UpLoadPhotoScreen.imageSlecte!,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
              Text(_profileController.data.name,
                  style: AppTextStyle.cairoFontBold(
                      fontSize: 20, myColor: AppColor.myDarkTeal)),
              Text(_profileController.data.nameJob,
                  style: AppTextStyle.cairoFontRegular(
                      fontSize: 14, myColor: AppColor.textColorGrayOfEMType)),
              Text(_profileController.data.location,
                  style: AppTextStyle.cairoFontRegular(
                      fontSize: 14, myColor: AppColor.textColorGrayOfEMType)),
              SizedBox(
                height: 35.h,
              ),
              Wrap(
                  runSpacing: 2.h,
                  spacing: 10.w,
                  alignment: WrapAlignment.center,
                  children: List.generate(
                    _profileController.data.skills.length,
                    (index) => Container(
                      padding: const EdgeInsets.all(6),
                      height: 45.h,
                      // width: 146.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColor.myTeal,
                      ),
                      child: Text(
                        _profileController.data.skills[index],
                        style: AppTextStyle.cairoFontBold(
                            fontSize: 14, myColor: Colors.white),
                      ),
                    ),
                  )),
              SizedBox(
                height: 35.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 44.h,
                ),
                child: Column(children: [
                  ItemListTileUser(title: 'Email', subTitle: _profileController.data.email, icon: Icons.email),
                  const Divider(
                    color: Color(0xffE0E0E0),
                  ),
                  ItemListTileUser(title: 'Phone', subTitle: _profileController.data.phone, icon: Icons.phone_android),
                  const Divider(
                    color: Color(0xffE0E0E0),
                  ),
                  ItemListTileUser(title: 'Experience', subTitle:_profileController.data.experience, icon: Icons.lightbulb),
                ]),
              )
            ],
          ),
        ));
  }
}
