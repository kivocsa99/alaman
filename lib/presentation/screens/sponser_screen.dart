import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class SposnerScreen extends HookConsumerWidget {
  final String profileById;
  final bool isdonor;
  const SposnerScreen(
      {super.key, required this.profileById, required this.isdonor});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beneficiary =
        ref.watch(getProfileByIDProvider(profileId: profileById));
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Profile",
          description: "Binificiary profile",
        ),
        body: beneficiary.when(
            data: (data) => data.fold(
                    (l) => Text(
                        l.message ?? "Please check your internet connection"),
                    (r) {
                  final BeneficiaryModel model = r;
                  return ResponsiveWidget(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height - 50,
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
                                    vertical: 30,
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      const Gap(30),
                                      Text(
                                        model.name!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff16437B)),
                                      ),
                                      const Gap(10),
                                      HtmlWidget(model.bio ?? ""),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: -30,
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                            Gap(10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Years"),
                                Text("${model.gender!.name}"),
                                Text("${model.city!.name}"),
                              ],
                            ),
                            HtmlWidget(model.bio ?? ""),
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
