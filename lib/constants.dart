import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';

const baseUrl = "https://eservices.alamanfund.jo/api/v1";
const storageUrl = "https://eservices.alamanfund.jo/storage/";

String toCompactFormat(String numberStr) {
  double number = double.parse(numberStr);
  if (number >= 1000) {
    return "${(number / 1000).toStringAsFixed(0)}k";
  }
  return number.toString();
}

double toDouble(String numberStr) {
  return double.parse(numberStr);
}

const onBoardingImages = ["assets/4.svg", "assets/5.svg", "assets/3.svg"];
String convertApiDate(String? apiDate) {
  // Parse the date string from the API
  DateTime parsedDate = DateTime.parse(apiDate ?? DateTime.now().toString());

  // Format the date to "dd-MM-yyyy"
  String formattedDate = DateFormat('dd-MM-yyyy').format(parsedDate);

  return formattedDate;
}

String formatNumber(int number) {
  final formatter = NumberFormat("#,##0", "en_US");
  return formatter.format(number);
}

PageRouteInfo pageCase({String? type, String? id}) {
  switch (type) {
    case "App\\Models\\TaxExemptionRequest":
      return TaxDetailRoute(id: id);
    default:
      return TaxDetailRoute(id: id);
  }
}
