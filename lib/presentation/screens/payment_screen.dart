import 'dart:convert';

import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:http/http.dart' as http;

@RoutePage()
class PaymentScreen extends HookConsumerWidget {
  final String? baseurl;
  const PaymentScreen({
    super.key,
    this.baseurl,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) async {
            print(url);
            if (url.contains("PaymentSuccess")) {
              context.router.replaceAll([MainRoute(isOrdered: true)]);
            }
          },
          onWebResourceError: (WebResourceError error) {},
        ),
      )
      ..loadRequest(Uri.parse(baseurl!));
    return Scaffold(
      body: Center(
        child: WebViewWidget(
          controller: controller,
        ),
      ),
    );
  }
}
