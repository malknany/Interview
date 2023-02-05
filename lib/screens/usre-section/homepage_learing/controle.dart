import 'package:interview_project/screens/usre-section/homepage_learing/model.dart';


class LearningController{
  bool isSelected=false;
  List<LearningModel> learn=[
    LearningModel(image: 'assets/image/robot.png', subTitle: 'Virtual Interview Training'),
    LearningModel(image: 'assets/image/rafiki.png', subTitle: 'Videos Learning',),
    LearningModel(image: 'assets/image/amico.png', subTitle: 'MCQ Training',),
    LearningModel(image: 'assets/image/cuate.png', subTitle: 'Documents Learning',),
  ];
}