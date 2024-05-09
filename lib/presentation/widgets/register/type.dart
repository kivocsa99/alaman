import 'package:alaman/application/provider/hive.register.provider.dart';
import 'package:alaman/application/provider/registration.provider.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TypeStep extends HookConsumerWidget {
  const TypeStep({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final box = Hive.box("register");
    final register = ref.watch(registerHiveNotifierProvider);
    final typeIcon = useState([
      "assets/beneficiary.svg",
      "assets/donor.svg",
      "assets/corporate.svg",
    ]);
    final typeName = useState([
      "beneficiary",
      "donor",
      "corporate",
    ]);
    final selectedIndex = useState(5);
    final controller1 = useAnimationController(duration: const Duration(seconds: 1));
    final controller2 = useAnimationController(duration: const Duration(seconds: 1));
    final controller3 = useAnimationController(duration: const Duration(seconds: 1));
    final controller4 = useAnimationController(duration: const Duration(seconds: 1));
    final controller5 = useAnimationController(duration: const Duration(seconds: 1));
    useEffect(() {
      controller5.forward();
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller4.forward();
      return null;
    }, const []);
    return ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnMainAxisAlignment: MainAxisAlignment.start,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveRowColumnItem(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller5, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 3),
                end: Offset.zero,
              ).animate(CurvedAnimation(parent: controller5, curve: Curves.easeOut)),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xffB12732).withOpacity(0.3),
                  ),
                  child: Text(
                    "Everyone is welcomed",
                    style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: const Color(0xff2A7DE1)),
                  ),
                ),
              ),
            ),
          ),
        ),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller1, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: controller1, curve: Curves.easeOut)),
            child: Text(
              "typetitle",
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
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: controller2, curve: Curves.easeOut)),
            child: AuthField(
              hint: "acounttype".tr(),
              readOnly: true,
            ),
          ),
        )),
        const ResponsiveRowColumnItem(child: Gap(10)),
        ResponsiveRowColumnItem(
          child: FadeTransition(
            opacity: CurvedAnimation(parent: controller3, curve: Curves.easeIn),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 0.5),
                end: Offset.zero,
              ).animate(CurvedAnimation(parent: controller3, curve: Curves.easeOut)),
              child: Container(
                width: double.infinity,
                // height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: Colors.grey)),
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 2,
                  ),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => GestureDetector(
                      child: ListTile(
                    onTap: () => selectedIndex.value = index,
                    leading: SvgPicture.asset(
                      typeIcon.value[index],
                    ),
                    title: Text(typeName.value[index]).tr(),
                    trailing: selectedIndex.value == index
                        ? const Icon(
                            FontAwesomeIcons.check,
                            color: Colors.blue,
                          )
                        : null,
                  )),
                  itemCount: 3,
                ),
              ),
            ),
          ),
        ),
        const ResponsiveRowColumnItem(child: Gap(50)),
        ResponsiveRowColumnItem(
            child: FadeTransition(
          opacity: CurvedAnimation(parent: controller4, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: controller4, curve: Curves.easeOut)),
            child: AuthContainer(
              raduis: 50,
              height: 60,
              onTap: () async {
                if (selectedIndex.value != 5) {
                  register!.role = typeName.value[selectedIndex.value];
                  ref.read(registerHiveNotifierProvider.notifier).addItem(register);
                  ref.read(registrationNotifierProvider.notifier).nextStep();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: const Text(
                    "selecttypeerror",
                    textAlign: TextAlign.center,
                  ).tr()));
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
          opacity: CurvedAnimation(parent: controller4, curve: Curves.easeIn),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.5),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: controller4, curve: Curves.easeOut)),
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
        ))
      ],
    );
  }
}
