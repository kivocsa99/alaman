import 'package:alaman/constants.dart';
import 'package:alaman/domain/marks/model/marks.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as locale;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class BeneficiaryBottomSheet extends HookConsumerWidget {
  final List<MarksModel>? marks;
  const BeneficiaryBottomSheet({
    this.marks,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;

    final selectedIndex1 = useState(-1);
    final currentStep = useState(0);
    final options = useState<List<String>>(
        ["downloadmarks", "setupmeeting", "meetinghistory"]);

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () =>
                          currentStep.value = currentStep.value - 1,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff16437B),
                      ),
                    ),
                    Text(
                      "options",
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
                  separatorBuilder: (context, index) => const Gap(10),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => AuthContainer(
                    color: selectedIndex1.value == index
                        ? const Color(0xff2A7DE1)
                        : Colors.white,
                    height: 50,
                    raduis: 40,
                    onTap: () async {
                      selectedIndex1.value = index;
                      if (index == 0) {
                        context.router.push(MarksHistoryRoute(marks: marks!));
                      } else if (index == 1) {
                      } else {}
                    },
                    child: Text(
                      options.value[index],
                      style: Theme.of(context)
                          .primaryTextTheme
                          .titleSmall!
                          .copyWith(
                              color: selectedIndex1.value == index
                                  ? Colors.white
                                  : const Color(0xff16437B)),
                    ).tr(),
                  ),
                  itemCount: options.value.length,
                ),
                const Gap(50),
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
  final double thumbSize; // Added thumbSize for scaling

  SliderThumbImage(this.image, {this.thumbSize = 20.0}); // Default size

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbSize, thumbSize); // Use thumbSize for the thumb size
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
    final ImageStream imageStream = image.image.resolve(ImageConfiguration());
    final ImageStreamListener listener =
        ImageStreamListener((ImageInfo info, bool _) {
      final image = info.image;
      final paint = Paint();

      // Scale the image to fit the thumbSize while maintaining aspect ratio
      double scale = thumbSize / image.width;
      double newWidth = image.width * scale;
      double newHeight = image.height * scale;

      // Center the scaled image on the slider's thumb position
      Offset imageOffset = Offset(
        center.dx - (newWidth / 2),
        center.dy - (newHeight / 2),
      );

      context.canvas.drawImageRect(
        image,
        Rect.fromLTWH(0, 0, image.width.toDouble(),
            image.height.toDouble()), // Source rectangle
        Rect.fromLTWH(imageOffset.dx, imageOffset.dy, newWidth,
            newHeight), // Destination rectangle
        paint,
      );
    });

    imageStream.addListener(listener);
    // Important: Remove the listener once the painting is done to prevent memory leaks
    imageStream.removeListener(listener);
  }
}
