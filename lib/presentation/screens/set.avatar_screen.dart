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
class SetAvatarScreen extends HookConsumerWidget {
  final List<BeneficiaryModel> beneficiary;
  const SetAvatarScreen({super.key, required this.beneficiary});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "View",
          description: "Beneficiaries Progress",
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
                                  child: beneficiary[index].image != null
                                      ? CachedNetworkImage(
                                          imageUrl:
                                              "$storageUrl/${beneficiary[index].image}",
                                          placeholder: (context, url) =>
                                              const Center(
                                                  child:
                                                      CircularProgressIndicator()),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                          imageBuilder:
                                              (context, imageProvider) {
                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: Image(
                                                image: imageProvider,
                                                fit: BoxFit.fill,
                                                width: double.infinity,
                                                height: double.infinity,
                                              ),
                                            );
                                          },
                                        )
                                      : const Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                ),
                              ),
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              ResponsiveRowColumnItem(
                                  child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnCrossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: Text(
                                    "${beneficiary[index].name}",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: const Color(0xff16437B)),
                                  )),
                                  ResponsiveRowColumnItem(
                                      child: Text(
                                    "${beneficiary[index].scholarship_type?.name}",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium!
                                        .copyWith(fontSize: 12),
                                  )),
                                ],
                              )),
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
                      ResponsiveRowColumnItem(
                          child: ProgressBar(
                              target:
                                  beneficiary[index].donations_goal!.toDouble(),
                              currentProgress: beneficiary[index]
                                  .beneficiary_payments!
                                  .fold(
                                      0.0,
                                      (sum, current) =>
                                          sum + current.amount!.toDouble()))),
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
                          ResponsiveRowColumnItem(
                              child: Text(
                            "Target: ${formatNumber(beneficiary[index].donations_goal!)} JD",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyMedium!
                                .copyWith(fontSize: 12),
                          ))
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              itemCount: beneficiary.length,
            ),
          ),
        ),
      ),
    );
  }
}
