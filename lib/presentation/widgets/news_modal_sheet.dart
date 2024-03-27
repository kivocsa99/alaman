import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsBottomSheet extends HookConsumerWidget {
  final NewsModel model;
  const NewsBottomSheet({super.key, required this.model});

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
                  imageUrl: "$storageUrl${model.image!}",
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  imageBuilder: (context, imageProvider) {
                    return Image(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
              const Gap(20),
              Text(locale == "en" ? model.title! : model.title_ar!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xff16437B))),
              const Gap(10),
              Text(convertApiDate(model.created_at!),
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xff16437B))),
              const Gap(20),
              HtmlWidget(locale == "en" ? model.content! : model.content_ar!)
            ],
          ),
        ),
      ),
    );
  }
}
