import 'model.dart';

class ControllerOnBoarding {
  int index = 0;
  List<ModelOnBoarding> onBoarding = [
    ModelOnBoarding(
      img: 'assets/image/comp_onbording1.png',
      title: 'Adverisement',
      subTitle:
          'You can write a job advertisement\n for your company, upload it and modify it',
    ),
    ModelOnBoarding(
      img: 'assets/image/comp_onbording2.png',
      title: 'Upload Your DataSet',
      subTitle: 'You can raise your data set so that the \n avatar can make an interview with people \n who want to apply for your job advertisement',
    ),
    ModelOnBoarding(
      img: 'assets/image/comp_onbording3.png',
      title: 'Communication With Users',
      subTitle:
          'After the completion of the interview work \n with the user, the people who succeeded in\n the interview will be sent to the user in \n order for the company to communicate with\n them and inform them about the next step.',
    ),
  ];
}
