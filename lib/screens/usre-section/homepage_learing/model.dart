import 'package:flutter/cupertino.dart';

class LearningModel{
  bool isSlected;
  String? image,subTitle;
  Widget? nextPage;
  LearningModel({required this.image,required this.subTitle,this.isSlected=false,required this.nextPage});
}