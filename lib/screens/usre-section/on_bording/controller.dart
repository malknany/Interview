import 'model.dart';

class ControllerOnBoarding {
  int index=0;
  List<ModelOnBoarding> onBoarding = [
    ModelOnBoarding(
      img: 'assets/image/onbording1.png',
      title: 'VIRTUAL INTERVIEW',
      subTitle:
          'You can choose the job advertisement that suits you and make an interview with the avatar, through which you will be evaluated and your CV will be sent to the company to which you applied',
    ),
    ModelOnBoarding(
      img: 'assets/image/onbording2.png',
      title: 'MAKE YOUR CV',
      subTitle: 'We will help you to create your own CV successfully',
    ),
    ModelOnBoarding(
      img: 'assets/image/onbording3.png',
      title: 'Learning Section',
      subTitle: 'You can practice with us on how to deal with the avatar and see some videos and books that will help you succeed in the interview.',
    ),

  ];
}
