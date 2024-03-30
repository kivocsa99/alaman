import 'package:alaman/application/auth/change_field/change_field.input.dart';
import 'package:alaman/application/auth/change_field/change_field.use_case.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as easy_localization;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangeFieldBottomSheet extends HookConsumerWidget {
  final String? field;
  const ChangeFieldBottomSheet({super.key, this.field});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final textValue = useState("");
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      height:
          (viewInsets > 0 ? null : MediaQuery.of(context).size.height * 0.6),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: formKey.value,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: viewInsets),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => context.router.pop(),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff16437B),
                      ),
                    ),
                    Text(
                      "${"change".tr()} ${"$field".tr()}",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyMedium
                          ?.copyWith(
                              fontSize: 20,
                              color: const Color(0xff16437B),
                              fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () => context.router.pop(),
                      icon: const Icon(
                        Icons.close,
                        color: Color(0xff16437B),
                      ),
                    ),
                  ],
                ),
                Gap(20),
                AuthField(
                  borderColor: Colors.grey.withOpacity(0.5),
                  borderWidth: 0.5,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "This field is required"),
                  ]),
                  hint: "${"new".tr()} ${"$field".tr()}",
                  inputAction: TextInputAction.done,
                  onChanged: (value) => textValue.value = value,
                ),
                Gap(50),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AuthContainer(
                    raduis: 50,
                    height: 50,
                    onTap: () async {
                      isLoading.value = true;
                      ref
                          .read(changeFieldUseCaseProvider)
                          .execute(ChangeFieldUseCaseInput(
                              value: textValue.value, field: field!))
                          .then((value) => value.fold((l) {
                                isLoading.value = false;
                                context.router.pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(l.message ?? "")));
                              }, (r) {
                                isLoading.value = false;
                                context.router.pop();
                              }));
                    },
                    color: const Color(0xffFFC629),
                    child: isLoading.value == false
                        ? Text(
                            "next",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .titleSmall
                                ?.copyWith(color: Colors.white),
                          )
                        : const CircularProgressIndicator(),
                  ),
                ),
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
