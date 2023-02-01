import 'package:flutter/material.dart';
import 'package:interview_project/screens/usre-section/doucoment/view.dart';
import 'package:interview_project/screens/usre-section/homepage_learing/model.dart';
import 'package:interview_project/screens/usre-section/video_learning/view.dart';


class LearningController{
  bool isSlect=false;
  List<LearningModel> Learn=[
    LearningModel(image: 'assets/image/robot.png', subTitle: 'Virtual Interview Training',nextPage:Container() ),
    LearningModel(image: 'assets/image/rafiki.png', subTitle: 'Videos Learning',nextPage:const VideoLearningScreen() ),
    LearningModel(image: 'assets/image/amico.png', subTitle: 'MCQ Training',nextPage: Container()),
    LearningModel(image: 'assets/image/cuate.png', subTitle: 'Documents Learning',nextPage: const DocumentScreen()),
  ];
}