import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/impact_container.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class YourBeneficiariesScreen extends HookConsumerWidget {
  final List<BeneficiaryModel> beneficiary;
  const YourBeneficiariesScreen({super.key, required this.beneficiary});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);
    final stepName = useState("");
    final stepCount = useState(0.0);

    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "view",
          description: "beneficiaryprogress",
        ),
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GestureDetector(
                  onTap: () async {
                    await ref.read(getGenericProvider.future).then((value) => value.fold((l) => null, (r) async {
                          var donationAmount = beneficiary[index].beneficiary_payments!.fold(0.0, (sum, current) => sum + current.amount!.toDouble());

                          for (var step in r.ScholarshipTypes!.firstWhere((element) => element.id == beneficiary[index].scholarship_type_id).steps!) {
                            if (donationAmount >= step.amount!.toDouble()) {
                              stepCount.value += 1.0; // Full step achieved
                              donationAmount -= step.amount!.toDouble();
                              stepName.value = step.name!; // Update last fully achieved step
                            } else if (donationAmount > 0) {
                              // Check if there's any donation left for partial step
                              stepCount.value += donationAmount / step.amount!.toDouble(); // Partial step
                              stepName.value = step.name!; // Update to current step as it's partially achieved
                              break; // No further steps can be achieved
                            }
                          }
                          context.router.push(BeneficiaryProfileRoute(
                              name: stepName.value,
                              step: stepCount.value,
                              index: 0,
                              steps: r.ScholarshipTypes!.firstWhere((element) => element.id == beneficiary[index].scholarship_type_id).steps!,
                              profileId: beneficiary[index].id.toString()));
                        }));
                    stepName.value = "";
                    stepCount.value = 0.0;
                  },
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
                                            imageUrl: "$storageUrl/${beneficiary[index].image}",
                                            placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                            errorWidget: (context, url, error) => const Icon(Icons.error),
                                            imageBuilder: (context, imageProvider) {
                                              return ClipRRect(
                                                borderRadius: BorderRadius.circular(15),
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
                                  columnCrossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: Text(
                                      "${locale == "en" ? beneficiary[index].name : beneficiary[index].name_ar}",
                                      style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                                    )),
                                    ResponsiveRowColumnItem(
                                        child: Text(
                                      "${locale == "en" ? beneficiary[index].scholarship_type?.name : beneficiary[index].scholarship_type?.name_ar}",
                                      style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 12),
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
                                target: beneficiary[index].donations_goal!.toDouble(),
                                currentProgress: beneficiary[index].beneficiary_payments!.fold(0.0, (sum, current) => sum + current.amount!.toDouble()))),
                        const ResponsiveRowColumnItem(child: Gap(30)),
                        ResponsiveRowColumnItem(
                            child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.ROW,
                          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ResponsiveRowColumnItem(
                                child: Text(
                              "${"started".tr()}: ${convertApiDate(beneficiary[index].alaman_join_date!)} ",
                              style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 12),
                            )),
                            ResponsiveRowColumnItem(
                                child: Text(
                              "${"target".tr()}:: ${formatNumber(beneficiary[index].donations_goal!)}  ${"jod".tr()}",
                              style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 12),
                            ))
                          ],
                        )),
                      ],
                    ),
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
