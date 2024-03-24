import 'package:easy_localization/easy_localization.dart';

const baseUrl = "https://aeservice.appchecker.net/api/v1";
const storageUrl = "https://aeservice.appchecker.net/storage/";
const onBoardingTitle = [
  "Effortless Giving",
  "Transparency\n& Accountability",
  "Catalyst for Hope",
];
const onBoardingDescription = [
  "Effortlessly contribute to impactful\ncauses through Aman\nFund's user-friendly platform.",
  "Your donations are handled with\ntransparency and accountability,\nensuring meaningful results.",
  "Join our community and be a\ncatalyst for positive change.",
];
const onBoardingImages = ["assets/4.svg", "assets/5.svg", "assets/3.svg"];
String convertApiDate(String apiDate) {
  // Parse the date string from the API
  DateTime parsedDate = DateTime.parse(apiDate);

  // Format the date to "dd-MM-yyyy"
  String formattedDate = DateFormat('dd-MM-yyyy').format(parsedDate);

  return formattedDate;
}

String formatNumber(int number) {
  final formatter = NumberFormat("#,##0", "en_US");
  return formatter.format(number);
}
