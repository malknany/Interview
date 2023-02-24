import 'package:interview_project/screens/usre-section/cv_on_bording/modle.dart';

class CvOnBoardingControl {
  int index = 0;
  List<CvOnBoarding> item = [
    CvOnBoarding(
        subTitle1: 'Minimalist',
        title: 'Well Designed Template',
        image: 'assets/image/cvonboarding1.png',
        subTitle:
            'You can choose the shape you like and we will\n design it for you according to your data'),
    CvOnBoarding(
        subTitle1: 'professional',
        title: 'Easy to Export',
        image: 'assets/image/cvonboarding2.png',
        subTitle:
            'You can download your cv as a pdf and keep \n it on your device'),
    CvOnBoarding(
        subTitle1: 'Modern',
        title: 'Easy to Edit',
        image: 'assets/image/cvonboarding3.png',
        subTitle: 'You can easily modify your data'),
  ];
}
