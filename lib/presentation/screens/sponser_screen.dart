import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/gps_container.dart';
import 'package:alaman/presentation/widgets/impact_container.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/sponser_bottom_sheet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class SposnerScreen extends HookConsumerWidget {
  final String profileById;
  final bool isdonor;
  const SposnerScreen(
      {super.key, required this.profileById, required this.isdonor});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final beneficiary =
        ref.watch(getProfileByIDProvider(profileId: profileById));
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "profile",
          description: "binificiaryprofile",
        ),
        body: beneficiary.when(
            data: (data) => data.fold(
                    (l) => Text(l.message ?? "internetconnection").tr(), (r) {
                  final BeneficiaryModel model = r;
                  final endamount = model.donations_goal! -
                      (model.beneficiary_payments!.fold(0.0,
                          (sum, current) => sum + current.amount!.toDouble()));

                  print(endamount);
                  return ResponsiveWidget(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height - 100,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: ListView(
                          children: [
                            const Gap(50),
                            Stack(
                              alignment: Alignment.topCenter,
                              clipBehavior: Clip.none,
                              children: <Widget>[
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      const Gap(30),
                                      Text(
                                        locale == "en"
                                            ? model.name!
                                            : model.name_ar!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff16437B)),
                                      ),
                                      HtmlWidget(locale == "en"
                                          ? model.bio ?? ""
                                          : model.bio_ar ?? ""),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: -30,
                                  child: CachedNetworkImage(
                                    imageUrl: "$storageUrl/${model.image}",
                                    placeholder: (context, url) => const Center(
                                        child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                    imageBuilder: (context, imageProvider) =>
                                        Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: imageProvider,
                                          scale: 2.5,
                                          fit: BoxFit
                                              .contain, // Adjust to your needs
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${model.birthdate}",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xff2A7DE1)),
                                ).tr(),
                                const Gap(10),
                                Container(
                                  width: 2,
                                  height: 30,
                                  color:
                                      const Color(0xff2A7DE1).withOpacity(0.5),
                                ),
                                const Gap(10),
                                Text(
                                  "${locale == "en" ? model.gender!.name : model.gender!.name_ar}",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xff2A7DE1)),
                                ),
                                const Gap(10),
                                Container(
                                  width: 2,
                                  height: 30,
                                  color:
                                      const Color(0xff2A7DE1).withOpacity(0.5),
                                ),
                                const Gap(10),
                                Text(
                                  "${locale == "en" ? model.city!.name : model.city!.name_ar}",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xff2A7DE1)),
                                ),
                                const Gap(10),
                              ],
                            ),
                            HtmlWidget(locale == "en"
                                ? model.bio ?? ""
                                : model.bio_ar ?? ""),
                            Gap(15),
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: MediaQuery.of(context).size.width < 400
                                  ? MediaQuery.of(context).size.width + 30
                                  : MediaQuery.of(context).size.width + 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffF9F9F9)),
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnCrossAxisAlignment: locale == "en"
                                    ? CrossAxisAlignment.end
                                    : CrossAxisAlignment.start,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: Text(
                                    "${"target".tr()}: ${model.donations_goal} ${"jod".tr()}",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontSize: 12,
                                            color: const Color(0xff16437B)),
                                  )),
                                  const ResponsiveRowColumnItem(child: Gap(30)),
                                  ResponsiveRowColumnItem(
                                      child: ProgressBar(
                                          target:
                                              model.donations_goal!.toDouble(),
                                          currentProgress:
                                              model.beneficiary_payments!.fold(
                                                  0.0,
                                                  (sum, current) =>
                                                      sum +
                                                      current.amount!
                                                          .toDouble()))),
                                ],
                              ),
                            ),
                            Gap(15),
                            Container(
                              padding: const EdgeInsets.all(15),
                              width: MediaQuery.of(context).size.width < 400
                                  ? MediaQuery.of(context).size.width + 30
                                  : MediaQuery.of(context).size.width + 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xffF9F9F9)),
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowMainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: const Color(0xffFFC629)),
                                      child: Image.asset(
                                        "assets/sponsership.png",
                                        scale: 5,
                                      ),
                                    ),
                                  ),
                                  const ResponsiveRowColumnItem(child: Gap(30)),
                                  ResponsiveRowColumnItem(
                                      child: ResponsiveRowColumn(
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    columnMainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        locale == "en"
                                            ? model
                                                .educational_organization_name!
                                            : model
                                                .educational_organization_name!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .titleMedium,
                                      )),
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        model.specialization!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .titleMedium
                                            ?.copyWith(fontSize: 20),
                                      )),
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            Gap(20),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              height: 80,
                              decoration: BoxDecoration(
                                  color: const Color(0xffF9F9F9),
                                  borderRadius: BorderRadius.circular(15)),
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      CustomPaint(
                                        size: Size(
                                          50,
                                          (50 * 1.2954963235294117).toDouble(),
                                        ),
                                        painter: RPSCustomPainter(),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        right: 0,
                                        bottom: 0,
                                        child: Image.asset(
                                          'assets/gps.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  )),
                                  const ResponsiveRowColumnItem(child: Gap(20)),
                                  ResponsiveRowColumnItem(
                                      child: ResponsiveRowColumn(
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    columnMainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        locale == "en"
                                            ? model.name!
                                            : model.name_ar!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: const Color(0xff16437B)),
                                      )),
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        model.address!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: const Color(0xff16437B)),
                                      ))
                                    ],
                                  )),
                                ],
                              ),
                            ),
                            Gap(40),
                            if (isdonor == false)
                              AuthContainer(
                                color: const Color(0xffFFC629),
                                height: 50,
                                raduis: 40,
                                onTap: () async => await ref
                                    .read(getGenericProvider.future)
                                    .then((value) => value.fold(
                                        (l) => ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                                content:
                                                    Text("internetconnection")
                                                        .tr())),
                                        (r) => showModalBottomSheet(
                                            context: context,
                                            backgroundColor: Colors.white,
                                            enableDrag: true,
                                            isScrollControlled: true,
                                            barrierColor:
                                                Colors.grey.withOpacity(0.7),
                                            builder: (BuildContext ctx) {
                                              return SponserBottomSheet(
                                                  id: profileById,
                                                  endAmount:
                                                      endamount.toDouble(),
                                                  paymentMethods:
                                                      r.PaymentMethods,
                                                  donationFrequency:
                                                      r.DonationFrequencies!);
                                            }))),
                                alignment: Alignment.center,
                                child: Text(
                                  "sponser",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: Colors.white, fontSize: 16),
                                ).tr(),
                              )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            error: (error, stackTrace) {
              return Text(error.toString());
            },
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
