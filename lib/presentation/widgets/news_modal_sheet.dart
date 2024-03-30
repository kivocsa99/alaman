import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsBottomSheet extends HookConsumerWidget {
  final String title;
  final String titleAr;
  final String des;
  final String desAr;
  final String image;
  final String? href;
  final String createdAt;
  const NewsBottomSheet(
      {super.key,
      required this.title,
      required this.createdAt,
      required this.titleAr,
      required this.des,
      required this.desAr,
      required this.image,
      this.href});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      width: double.infinity,
      height:
          (viewInsets > 0 ? null : MediaQuery.of(context).size.height * 0.8),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: viewInsets),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => context.router.pop(),
                ),
              ),
              const Gap(10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  imageUrl: "$storageUrl$image",
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageBuilder: (context, imageProvider) {
                    return Image(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
              const Gap(20),
              Text(locale == "en" ? title : titleAr,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xff16437B))),
              const Gap(10),
              Text(convertApiDate(createdAt),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xff16437B))),
              const Gap(20),
              HtmlWidget(locale == "en" ? des : desAr),
              const Gap(20),
              if (href != null)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AuthContainer(
                    raduis: 50,
                    height: 50,
                    onTap: () async {
                      if (!await launchUrl(Uri.parse("$href"))) {
                        throw Exception('Could not launch ');
                      }
                    },
                    color: const Color(0xffFFC629),
                    child: Text(
                      "View Campaign",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                    ).tr(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
