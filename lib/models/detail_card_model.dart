class DetailCardModel {
  String number,
      personImage,
      personName,
      email,
      countryImage,
      countryName,
      status,
      jobTitle;

  DetailCardModel(
      {required this.number,
        required this.personImage,
        required this.personName,
        required this.email,
        required this.countryImage,
        required this.countryName,
        required this.status,
        required this.jobTitle});
}

List<DetailCardModel> detailsList = [
  DetailCardModel(
      number: "510",
      personImage: "assets/images/avatar.png",
      personName: "Alan Walker",
      email: "alanwalker@gmail.com",
      countryImage: "assets/images/fr.svg",
      countryName: "France",
      status: "Full time",
      jobTitle: "Marketing Manager"),
  DetailCardModel(
      number: "620",
      personImage: "assets/images/avatar.png",
      personName: "Roman Kalko",
      email: "alanwalker@gmail.com",
      countryImage: "assets/images/us.svg",
      countryName: "USA",
      status: "Full time",
      jobTitle: "UI/UX Designer"),
  DetailCardModel(
      number: "1203",
      personImage: "assets/images/avatar.png",
      personName: "Chetan Vaghela",
      email: "chetanv@gmail.com",
      countryImage: "assets/images/in.svg",
      countryName: "India",
      status: "Full time",
      jobTitle: "Flutter Developer"),
  DetailCardModel(
      number: "45",
      personImage: "assets/images/avatar.png",
      personName: "Foden",
      email: "alanwalker@gmail.com",
      countryImage: "assets/images/jp.svg",
      countryName: "Japan",
      status: "Full time",
      jobTitle: "Product Designer"),
  DetailCardModel(
      number: "157",
      personImage: "assets/images/avatar.png",
      personName: "Alan Walker",
      email: "alanwalker@gmail.com",
      countryImage: "assets/images/id.svg",
      countryName: "Indonesia",
      status: "Full time",
      jobTitle: "Marketing Manager"),
  DetailCardModel(
      number: "1203",
      personImage: "assets/images/avatar.png",
      personName: "Alan Walker",
      email: "alanwalker@gmail.com",
      countryImage: "assets/images/gb.svg",
      countryName: "UK",
      status: "Full time",
      jobTitle: "Marketing Manager"),
];