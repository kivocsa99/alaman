import 'dart:math';

import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ImpactContainer extends HookConsumerWidget {
  final BeneficiaryModel? beneficiary;
  const ImpactContainer({super.key, this.beneficiary});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width < 400
          ? MediaQuery.of(context).size.width + 30
          : MediaQuery.of(context).size.width + 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.COLUMN,
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
                  child: beneficiary!.image != null
                      ? CachedNetworkImage(
                          imageUrl: "$storageUrl/${beneficiary!.image}",
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
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
                    "${locale == "en" ? beneficiary!.name : beneficiary!.name_ar}",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyMedium!
                        .copyWith(color: const Color(0xff16437B)),
                  )),
                  ResponsiveRowColumnItem(
                      child: Text(
                    "${locale == "en" ? beneficiary!.scholarship_type?.name : beneficiary!.scholarship_type?.name_ar}",
                    maxLines: 2,
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyMedium!
                        .copyWith(fontSize: 12),
                  )),
                ],
              )),
            ],
          )),
          const ResponsiveRowColumnItem(child: Gap(30)),
          ResponsiveRowColumnItem(
              child: ProgressBar(
                  target: beneficiary!.donations_goal!.toDouble(),
                  currentProgress: beneficiary!.beneficiary_payments!.fold(0.0,
                      (sum, current) => sum + current.amount!.toDouble()))),
          const ResponsiveRowColumnItem(child: Gap(30)),
          ResponsiveRowColumnItem(
              child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ResponsiveRowColumnItem(
                  child: Text(
                "${"started".tr()}: ${convertApiDate(beneficiary!.alaman_join_date)} ",
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyMedium!
                    .copyWith(fontSize: 12),
              )),
              ResponsiveRowColumnItem(
                  child: Text(
                "${"target".tr()}: ${formatNumber(beneficiary!.donations_goal!)}  ${"jod".tr()}",
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyMedium!
                    .copyWith(fontSize: 12),
              ))
            ],
          )),
          const ResponsiveRowColumnItem(child: Gap(10)),
          ResponsiveRowColumnItem(
              child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.ROW,
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Container(
                    height: 35,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xffFFC629),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "impactpathway",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyMedium
                          ?.copyWith(
                            color: Colors.white,
                            fontSize: 13,
                            backgroundColor:
                                const Color(0xffB2A1A1).withOpacity(0.3),
                          ),
                    ).tr(),
                  )),
              const ResponsiveRowColumnItem(child: Gap(5)),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: GestureDetector(
                    onTap: () => context.router.push(BeneficiaryProfileRoute(
                        profileId: beneficiary!.id.toString())),
                    child: Container(
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: .5),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        "viewprofile",
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyMedium
                            ?.copyWith(color: const Color(0xff58595B)),
                      ).tr(),
                    ),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}

class ProgressBar extends StatefulWidget {
  final double target;
  final double currentProgress;

  const ProgressBar(
      {Key? key, required this.target, required this.currentProgress})
      : super(key: key);

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: widget.currentProgress)
        .animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        // Use _animation.value here instead of widget.currentProgress
        final animationProgress = _animation.value;
        // Ensure target is not zero to avoid division by zero error.
        // Also, cap progressWidth at maxWidth to prevent overflow.
        final progressWidth = widget.target > 0
            ? (maxWidth * min(animationProgress, widget.target)) / widget.target
            : 0.0;
        return SizedBox(
          width: maxWidth,
          child: Stack(
            children: [
              Container(
                width: maxWidth,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
              ),
              Container(
                width: progressWidth,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xff2A7DE1),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
