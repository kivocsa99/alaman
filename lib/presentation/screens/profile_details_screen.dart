import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProfileDetailsScreen extends HookConsumerWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileProvider);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Profile",
          description: "Your Profile",
        ),
        body: profile.when(
            data: (data) => data.fold(
                    (l) => Text(
                        l.message ?? "Please check your internet connection"),
                    (r) {
                  final BeneficiaryModel model = r;
                  return ResponsiveWidget(
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
                                ), // Adjust the padding for your needs
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Gap(30), // Leave space for the avatar
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
                                    const Gap(10), // Spacing between text
                                    Text(
                                      'I’m User, facing financial challenges but committed to my education. With your support, I can turn aspirations into achievements. Your contribution makes a difference in my journey. Thank you for your support!',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -30, // Half of the avatar size
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
                          const Gap(20),
                          AuthContainer(
                            color: const Color(0xffFFC629),
                            height: 50,
                            raduis: 40,
                            onTap: () {},
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.volunteer_activism,
                                  color: Colors.white,
                                ),
                                const Gap(10),
                                Text(
                                  "Manage Grants",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          const Gap(20),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ListTile(
                              title: Text(
                                "Profile Details",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff18447B)),
                              ),
                              leading: const Icon(
                                Icons.person,
                                color: Color(0xff18447B),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff18447B),
                              ),
                            ),
                          ),
                          const Gap(10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ListTile(
                              title: Text(
                                "Help",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff18447B)),
                              ),
                              leading: const Icon(
                                Icons.help,
                                color: Color(0xff18447B),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff18447B),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
