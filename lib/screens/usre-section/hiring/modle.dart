class HiringModel {
  String employmentType, jobTitle;
  bool isSelect;

  HiringModel(
      {this.employmentType = '', this.isSelect = false, this.jobTitle = ''});
}

class HiringADSModel {
  String image, textTitle, nameCompany, location, time;
  bool isSave;

  HiringADSModel(
      {required this.image,
      required this.textTitle,
      required this.nameCompany,
      required this.location,
      required this.time,
      this.isSave = false});
}
