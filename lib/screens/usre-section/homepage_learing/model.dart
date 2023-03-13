import 'package:flutter/material.dart';

import '../second_page_learning/view.dart';

class LearningModel {
  bool isSelected;
  String? image, subTitle;
  Widget nextPage;

  LearningModel(
      {required this.image,
      required this.subTitle,
      this.isSelected = false,
      this.nextPage = const SecondPageLearningScreen()});
}
