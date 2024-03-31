import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
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
            title: "language",
            description: "selectlanguage",
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
                        print(selectedLanguage.value);
                        if (selectedLanguage.value == "en") {
                          null;
                        } else {
                          ref
                              .read(languageHiveNotifierProvider.notifier)
                              .setLanguage(context, "en");
                          selectedLanguage.value = context.locale.languageCode;
                        }
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
                        if (selectedLanguage.value == "ar") {
                          null;
                        } else {
                          ref
                              .read(languageHiveNotifierProvider.notifier)
                              .setLanguage(context, "ar");
                          selectedLanguage.value = context.locale.languageCode;
                        }
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
