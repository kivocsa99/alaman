import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/news.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
import 'package:alaman/presentation/widgets/news_modal_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewsCarousel extends HookConsumerWidget {
  const NewsCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(paginatedNewsNotifierProvider);
    final notifier = ref.watch(paginatedNewsNotifierProvider.notifier);
    final carouselController = CarouselController();
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();

    useEffect(() {
      notifier.fetchNews();
      return null;
    }, []);

    final onPageChanged = useCallback((index, reason) {
      if (index == state.news.length - 1 && !state.hasReachedMax) {
        notifier.fetchNews();
      }
    }, [state.news.length, state.hasReachedMax]);

    return SizedBox(
      child: CarouselSlider(
          carouselController: carouselController,
          items: state.news.map((e) {
            final date = convertApiDate(e.created_at!);
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.white,
                  showDragHandle: true,
                  isScrollControlled: true,
                  barrierColor: Colors.grey.withOpacity(0.7),
                  builder: (BuildContext context) {
                    return NewsBottomSheet(
                      title: e.title!,
                      titleAr: e.title_ar!,
                      des: e.content!,
                      desAr: e.content_ar!,
                      createdAt: e.created_at!,
                      image: e.image!,
                    );
                  },
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: CachedNetworkImage(
                        imageUrl: "$storageUrl${e.image!}",
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        imageBuilder: (context, imageProvider) {
                          return Image(
                            image: imageProvider,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          );
                        },
                      ),
                    ),
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff4379BD).brighten(15),
                              Colors.transparent
                            ],
                            begin: locale == "en"
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            end: locale == "en"
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 20,
                      bottom: 0,
                      right: 20,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "news",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .titleSmall
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                          ).tr(),
                          const SizedBox(height: 20),
                          Container(
                            width: 250,
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Text(
                              locale == "en" ? e.title! : e.title_ar!,
                              maxLines: 3,
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: locale == "en"
                                ? Alignment.bottomLeft
                                : Alignment.bottomRight,
                            child: Text(
                              date,
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(height: 200, onPageChanged: onPageChanged)),
    );
  }
}
