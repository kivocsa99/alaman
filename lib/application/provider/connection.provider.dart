import 'package:alaman/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final internetConnectionProvider =
    StreamProvider.autoDispose<bool>((ref) async* {
  bool hasInternet = false;

  try {
    final result =
        await http.get(Uri.parse('https://aeservice.appchecker.net'));
    // A status code of 200 indicates a successful HTTP request, implying internet access
    hasInternet = result.statusCode == 200;
  } catch (_) {
    // An exception indicates no internet access
    hasInternet = false;
  }
  print(hasInternet);
  yield hasInternet;
});
