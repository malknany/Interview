import 'dart:io';

import 'modle.dart';

class HiringController {
  File? image;
  List<HiringModel> text = [
    HiringModel(employmentType: 'Full time'),
    HiringModel(employmentType: 'Fresher'),
    HiringModel(employmentType: 'Work at home'),
    HiringModel(employmentType: 'Freelance'),
    HiringModel(employmentType: 'Internship'),
    HiringModel(employmentType: 'Part time'),
    HiringModel(employmentType: 'Contract'),
  ];

  List<HiringModel> jobTitles = [
    HiringModel(jobTitle: 'Front End'),
    HiringModel(jobTitle: 'UI/UX'),
    HiringModel(jobTitle: 'Graphic Designer'),
    HiringModel(jobTitle: 'Flutter'),
  ];

  List<HiringADSModel> ads = [
    HiringADSModel(
      image: 'assets/image/company_Logo.png',
      textTitle: 'Marketing Graphic Designer',
      nameCompany: 'Serv5 ',
      location: 'Qesm 2nd El Mansoura, Ad Daqahliyah,\n Egypt (On-site )',
      time: '2 days ago',
    ),
  ];
}
