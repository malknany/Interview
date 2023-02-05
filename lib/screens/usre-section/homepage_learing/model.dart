import 'package:flutter/cupertino.dart';
import 'package:interview_project/screens/usre-section/video_learning/view.dart';

class LearningModel{
  bool isSelected;
  String? image,subTitle;
  Widget nextPage;
  LearningModel({required this.image,required this.subTitle,this.isSelected=false,this.nextPage=const VideoLearningScreen()});
}