import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/registration.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/shimmer_affect.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CityStep extends HookConsumerWidget {
  const CityStep({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);

    final controller = FixedExtentScrollController();
    final box = Hive.box("register");
    final register = useState<UserRegistration>(box.getAt(0));
    final city = useState("city".tr());
    final cityId = useState(0);
    final controller1 = useAnimationController(duration: const Duration(seconds: 1));
    final controller2 = useAnimationController(duration: const Duration(seconds: 1));
    final controller3 = useAnimationController(duration: const Duration(seconds: 1));
    final controller5 = useAnimationController(duration: const Duration(seconds: 1));
    useEffect(() {
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller5.forward();
      return null;
    }, const []);
    final formKey = useState(GlobalKey<FormState>());
    final generic = ref.watch(getGenericProvider);

    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnMainAxisAlignment: MainAxisAlignment.start,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller1, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
            child: Text(
              "citytitle",
              style: Theme.of(context).primaryTextTheme.titleLarge?.copyWith(color: Colors.black),
            ).tr(),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller2, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.2),
                end: Offset.zero,
              ).animate(CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
              child: Form(
                  key: formKey.value,
                  child: generic.maybeWhen(
                    data: (data) => data.fold((l) => Text(l.message ?? "internetconnection").tr(), (r) {
                      final cities = r.Cities;
                      return GestureDetector(
                        onTap: () async {
                          await showCupertinoModalPopup(
                              context: context,
                              builder: (_) => Container(
                                    height: 250,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 180,
                                          child: CupertinoPicker(
                                              scrollController: controller,
                                              itemExtent: 45,
                                              onSelectedItemChanged: (item) async {
                                                city.value = locale == "en" ? cities[item].name! : cities[item].name_ar!;
                                                cityId.value = cities[item].id!;
                                                register.value.cityId = cities[item].id!.toString();
                                                await box.putAt(0, register.value);
                                              },
                                              children: cities!
                                                  .map((e) => Center(
                                                        child: Text((locale == "en" ? e.name! : e.name_ar!).toString()),
                                                      ))
                                                  .toList()),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            height: 70,
                                            child: CupertinoButton(
                                              child: const Text(
                                                'confirm',
                                                style: TextStyle(color: Color(0xff18447B)),
                                              ).tr(),
                                              onPressed: () async {
                                                if (controller.selectedItem == 0) {
                                                  city.value = locale == "en" ? cities[0].name! : cities[0].name_ar!;
                                                  cityId.value = cities[0].id!;
                                                  register.value.cityId = cities[0].id!.toString();
                                                  await box.putAt(0, register.value).then((value) => context.router.maybePop());
                                                }
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 10),
                          width: double.infinity,
                          height: 70,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.blue, width: 2), borderRadius: const BorderRadius.all(Radius.circular(15))),
                          child: Text(
                            city.value,
                            style: TextStyle(
                              color: Colors.black26,
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      );
                    }),
                    orElse: () => ShimmerAffect(
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(border: Border.all(color: Colors.blue, width: 2), borderRadius: const BorderRadius.all(Radius.circular(15))),
                    ),
                  )),
            ),
          ),
        ),
        const ResponsiveRowColumnItem(child: Gap(50)),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller3, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.2),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: controller3, curve: Curves.easeOut)),
            child: AuthContainer(
              raduis: 50,
              height: 60,
              onTap: () {
                if (formKey.value.currentState!.validate()) {
                  ref.read(registrationNotifierProvider.notifier).nextStep();
                }
              },
              color: const Color(0xffD2D3D6),
              child: Text(
                "next",
                style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
              ).tr(),
            ),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller5, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.2),
                end: Offset.zero,
              ).animate(CurvedAnimation(parent: controller5, curve: Curves.easeOut)),
              child: AuthContainer(
                raduis: 50,
                height: 60,
                onTap: () => ref.read(registrationNotifierProvider.notifier).previousStep(),
                color: const Color(0xffD2D3D6),
                child: Text(
                  "back",
                  style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                ).tr(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
