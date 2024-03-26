import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class LanguageScreen extends HookConsumerWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = useState(context.locale.languageCode);
    return ResponsiveWidget(
      child: SafeArea(
        child: Scaffold(
          appBar: const CustomAppBar(
            title: "Language",
            description: "Select language",
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              children: [
                const ResponsiveRowColumnItem(
                  child: Gap(20),
                ),
                ResponsiveRowColumnItem(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () async {
                        selectedLanguage.value == "en"
                            ? null
                            : context
                                .setLocale(const Locale('en'))
                                .then((value) {
                                selectedLanguage.value =
                                    context.locale.languageCode;
                                ref
                                    .read(settingHiveNotifierProvider.notifier)
                                    .setLanguage("en");
                              });
                      },
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.ROW,
                        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ResponsiveRowColumnItem(
                            child: const Text(
                              'English',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff6E6E6E)),
                            ).tr(),
                          ),
                          ResponsiveRowColumnItem(
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedLanguage.value == "en"
                                      ? Colors.blue
                                      : const Color(0xffE3EEFF)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const ResponsiveRowColumnItem(
                  child: Gap(20),
                ),
                ResponsiveRowColumnItem(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () async {
                        selectedLanguage.value == "ar"
                            ? null
                            : await context
                                .setLocale(const Locale('ar'))
                                .then((value) {
                                selectedLanguage.value =
                                    context.locale.languageCode;
                                ref
                                    .read(settingHiveNotifierProvider.notifier)
                                    .setLanguage("ar");
                              });
                      },
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.ROW,
                        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ResponsiveRowColumnItem(
                            child: const Text(
                              'Arabic',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff6E6E6E)),
                            ).tr(),
                          ),
                          ResponsiveRowColumnItem(
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedLanguage.value == "ar"
                                      ? Colors.blue
                                      : const Color(0xffE3EEFF)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
