import 'dart:math';

import 'package:alaman/application/beneficiary/set_avatar_use_case/set_avatar_use_case.dart';
import 'package:alaman/application/beneficiary/set_avatar_use_case/set_avatar_use_case.input.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
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
class SetAvatarScreen extends HookConsumerWidget {
  const SetAvatarScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generic = ref.watch(getGenericProvider);
    Random random = Random();
    int randomNumber = random.nextInt(3);
    final colorsList = useState<List<Color>>([
      const Color(0xff4379BD),
      const Color(0xffFEE596),
      const Color(0xff93C1E8),
    ]);
    final isLoading = useState(false);
    final isLoadingMap = useState<Map<int, bool>>({});
    return SafeArea(
      child: Scaffold(
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: generic.when(
                data: (data) => data.fold(
                    (l) => Text(l.message ?? "internetconnection").tr(),
                    (r) => GridView.builder(
                          padding: const EdgeInsets.all(10),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.8,
                          ),
                          itemCount: r.Avatars!.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 70,
                              height: 70,
                              padding: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    stops: [0, 5],
                                    colors: [
                                      // Brighten function is not native, you'd have to implement it
                                      Colors.white,
                                      colorsList.value[randomNumber]
                                          .brighten(5)
                                          .withOpacity(0.3),
                                    ],
                                  )),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "$storageUrl/${r.Avatars![index].filename}",
                                placeholder: (context, url) => const Center(
                                    child: CircularProgressIndicator()),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                imageBuilder: (context, imageProvider) =>
                                    GestureDetector(
                                  onTap: () async {
                                    // Get the current state.
                                    final currentLoadingMap =
                                        Map<int, bool>.from(isLoadingMap.value);

                                    if (!(currentLoadingMap[index] ?? false)) {
                                      // Update the state for this index.
                                      currentLoadingMap[index] = true;
                                      isLoadingMap.value =
                                          currentLoadingMap; // Set the new state.

                                      // Execute the use case.
                                      await ref
                                          .read(setAvatarUseCaseProvider)
                                          .execute(SetAvatarUseCaseInput(
                                              id: r.Avatars![index].id!))
                                          .then((value) => value.fold((l) {
                                                // Update the state to indicate loading is done.
                                                final newLoadingMap =
                                                    Map<int, bool>.from(
                                                        isLoadingMap.value);
                                                newLoadingMap[index] = false;
                                                isLoadingMap.value =
                                                    newLoadingMap; // Set the new state.

                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(l.message ??
                                                        "internetconnection"),
                                                  ),
                                                );
                                              }, (r) async {
                                                final newLoadingMap =
                                                    Map<int, bool>.from(
                                                        isLoadingMap.value);
                                                newLoadingMap[index] = false;
                                                isLoadingMap.value =
                                                    newLoadingMap; // Set the new state.
                                                await context.router
                                                    .replaceAll([MainRoute()]);
                                              }));
                                    }
                                  },
                                  child: isLoadingMap.value[index] ?? false
                                      ? const CircularProgressIndicator()
                                      : Container(
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
                            );
                          },
                        )),
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => const CircularProgressIndicator()),
          ),
        ),
      ),
    );
  }
}
