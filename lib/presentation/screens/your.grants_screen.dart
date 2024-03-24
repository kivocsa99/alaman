import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/impact_container.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class YourGrantsScreen extends HookConsumerWidget {
  const YourGrantsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generic = ref.watch(getGenericProvider);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "View",
          description: "View your Grants",
        ),
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    children: [
                      ResponsiveRowColumnItem(
                          child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.ROW,
                        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.ROW,
                            children: [
                              ResponsiveRowColumnItem(
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffffc629),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              const ResponsiveRowColumnItem(child: Gap(10)),
                            ],
                          )),
                          const ResponsiveRowColumnItem(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff16437B),
                            ),
                          )
                        ],
                      )),
                      const ResponsiveRowColumnItem(child: Gap(30)),
                      const ResponsiveRowColumnItem(child: Gap(30)),
                      ResponsiveRowColumnItem(
                          child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.ROW,
                        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ResponsiveRowColumnItem(
                              child: Text(
                            "Started: what date ? ",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyMedium!
                                .copyWith(fontSize: 12),
                          )),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              itemCount: 20,
            ),
          ),
        ),
      ),
    );
  }
}
