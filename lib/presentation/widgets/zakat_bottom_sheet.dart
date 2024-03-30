import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.dart';
import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.input.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/domain/paymentmethod/model/payment.method.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/step_indicator.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as locale;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ZaqatBottomSheet extends HookConsumerWidget {
  final List<PaymentMethodModel>? paymentMethods;
  const ZaqatBottomSheet({
    required this.paymentMethods,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final isLoading = useState(false);
    final selectedIndex1 = useState(0);
    final currentStep = useState(0);
    final type1 = useState(paymentMethods![selectedIndex1.value].name!);
    final typeId1 = useState(paymentMethods![selectedIndex1.value].id!);
    final sliderValue = useState(10.0);
    final imagesList = useState<List<String>>([
      "assets/coin1.png",
      "assets/coin2.png",
      "assets/coin3.png",
      "assets/coin4.png"
    ]);
    final coinsList = useState<List<double>>([25.0, 50.0, 75.0, 100.0]);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: formKey.value,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: viewInsets),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -30,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: StepIndicator(
                        currentStep: currentStep.value, stepCount: 2),
                  ),
                ),
                AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    child: currentStep.value == 0
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () => context.router.pop(),
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Color(0xff16437B),
                                    ),
                                  ),
                                  Text(
                                    "zakatamount",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyLarge
                                        ?.copyWith(
                                            fontSize: 20,
                                            color: const Color(0xff16437B),
                                            fontWeight: FontWeight.w500),
                                  ).tr(),
                                  IconButton(
                                    onPressed: () => context.router.pop(),
                                    icon: const Icon(
                                      Icons.close,
                                      color: Color(0xff16437B),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(40),
                              SizedBox(
                                height: 130,
                                width: double.infinity,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) =>
                                      const Gap(10),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () => sliderValue.value =
                                        coinsList.value[index],
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 10, right: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              width: 1)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            imagesList.value[index],
                                            width: 80,
                                            height: 60,
                                          ),
                                          const SizedBox(height: 20),
                                          Text(
                                            "${coinsList.value[index].round()}  ${"jod".tr()}",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    color: const Color(
                                                        0xff16437B)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  itemCount: 4,
                                ),
                              ),
                              const Gap(10),
                              Text(
                                "or",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium!
                                    .copyWith(color: const Color(0xff16437B)),
                              ).tr(),
                              const Gap(10),
                              Text(
                                "slidefor",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium,
                              ).tr(),
                              const Gap(15),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5),
                                        width: 1)),
                                height: 30,
                                width: 100,
                                alignment: Alignment.center,
                                child: Center(
                                  child: Text(
                                    sliderValue.value.round().toString(),
                                  ),
                                ),
                              ),
                              const Gap(10),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  thumbShape: SliderThumbImage(
                                      Image.asset('assets/coin1.png')),
                                ),
                                child: Slider(
                                  value: sliderValue.value,
                                  min: 1,
                                  max: 10000,
                                  divisions: 9999,
                                  label: sliderValue.value.round().toString(),
                                  onChanged: (value) {
                                    sliderValue.value = value;
                                  },
                                ),
                              ),
                              const Gap(50),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: AuthContainer(
                                  raduis: 50,
                                  height: 50,
                                  onTap: () async {
                                    currentStep.value = currentStep.value + 1;
                                  },
                                  color: const Color(0xffFFC629),
                                  child: Text(
                                    "next",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .titleSmall
                                        ?.copyWith(color: Colors.white),
                                  ).tr(),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () => currentStep.value =
                                        currentStep.value - 1,
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Color(0xff16437B),
                                    ),
                                  ),
                                  Text(
                                    "choosepayment",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            fontSize: 20,
                                            color: const Color(0xff16437B),
                                            fontWeight: FontWeight.bold),
                                  ).tr(),
                                  IconButton(
                                    onPressed: () => context.router.pop(),
                                    icon: const Icon(
                                      Icons.close,
                                      color: Color(0xff16437B),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(40),
                              ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                separatorBuilder: (context, index) =>
                                    const Gap(10),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => AuthContainer(
                                  color: selectedIndex1.value == index
                                      ? const Color(0xff2A7DE1)
                                      : Colors.white,
                                  height: 50,
                                  raduis: 40,
                                  onTap: () async {
                                    selectedIndex1.value = index;
                                    type1.value = locale == "en"
                                        ? paymentMethods![index].name!
                                        : paymentMethods![index].name_ar!;
                                    typeId1.value = paymentMethods![index].id!;
                                  },
                                  child: Text(
                                    locale == "en"
                                        ? paymentMethods![index].name!
                                        : paymentMethods![index].name_ar!,
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .titleSmall!
                                        .copyWith(
                                            color: selectedIndex1.value == index
                                                ? Colors.white
                                                : const Color(0xff16437B)),
                                  ),
                                ),
                                itemCount: paymentMethods!.length,
                              ),
                              const Gap(50),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: AuthContainer(
                                  raduis: 50,
                                  height: 50,
                                  onTap: () async {
                                    isLoading.value = true;
                                    if (typeId1.value ==
                                        paymentMethods!
                                            .firstWhere((element) =>
                                                element.name == "Cash")
                                            .id) {
                                      isLoading.value = false;
                                      context.router.pop();
                                      context.router.push(LocationCheckerRoute(
                                        paymentMethod: 1,
                                        donationTypeId: 2,
                                        amount: sliderValue.value,
                                      ));
                                    } else {
                                      await ref
                                          .read(initDonationUseCaseProvider)
                                          .execute(
                                            InitDonationUseCaseInput(
                                              paymentMethodId: typeId1.value,
                                              donationTypeId: 2,
                                              isRecurring: 0,
                                              totalAmount: sliderValue.value,
                                            ),
                                          )
                                          .then((value) => value.fold(
                                                (l) async {
                                                  isLoading.value = false;
                                                  context.router.pop();
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(const SnackBar(
                                                          content: Text(
                                                              "error occured please try again")));
                                                },
                                                (r) async {
                                                  isLoading.value = false;

                                                  context.router.pop();

                                                  context.router.push(
                                                      PaymentRoute(
                                                          baseurl: r["url"]));
                                                },
                                              ));
                                      ;
                                    }
                                  },
                                  color: const Color(0xffFFC629),
                                  child: isLoading.value == false
                                      ? Text(
                                          "next",
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .titleSmall
                                              ?.copyWith(color: Colors.white),
                                        ).tr()
                                      : const CircularProgressIndicator(),
                                ),
                              ),
                            ],
                          )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliderThumbImage extends SliderComponentShape {
  final Image image;
  final double thumbSize;

  SliderThumbImage(this.image, {this.thumbSize = 20.0});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbSize, thumbSize);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final ImageStream imageStream =
        image.image.resolve(const ImageConfiguration());
    final ImageStreamListener listener =
        ImageStreamListener((ImageInfo info, bool _) {
      final image = info.image;
      final paint = Paint();

      double scale = thumbSize / image.width;
      double newWidth = image.width * scale;
      double newHeight = image.height * scale;

      Offset imageOffset = Offset(
        center.dx - (newWidth / 2),
        center.dy - (newHeight / 2),
      );

      context.canvas.drawImageRect(
        image,
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()),
        Rect.fromLTWH(imageOffset.dx, imageOffset.dy, newWidth, newHeight),
        paint,
      );
    });

    imageStream.addListener(listener);

    imageStream.removeListener(listener);
  }
}
