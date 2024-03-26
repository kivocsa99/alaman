import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/presentation/widgets/request_bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class GranstSlider extends HookConsumerWidget {
  const GranstSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final grantTypes = useState([
      "alamanreq".tr(),
      "elegibility".tr(),
      "trainingreq".tr(),
    ]);
    final grantPictures = useState([
      "assets/amanreq.png",
      "assets/elegibity.png",
      "assets/training.png",
    ]);

    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const Gap(20),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () async {
              final result = await ref.read(getGenericProvider.future);
              return result.fold(
                  (l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(l.message ?? "internetconnection").tr())),
                  (r) async => index != 1
                      ? showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          showDragHandle: true,
                          isScrollControlled: true,
                          barrierColor: Colors.grey.withOpacity(0.7),
                          builder: (BuildContext context) {
                            return RequestBottomSheet(
                              isProgram: index == 0 ? false : true,
                              services: index == 0 ? r.AlamanServices : [],
                              programs: index == 2 ? r.TrainingPrograms : [],
                            );
                          },
                        )
                      : null);
            },
            child: Container(
              width: 150,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(15)),
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.COLUMN,
                columnMainAxisAlignment: MainAxisAlignment.spaceAround,
                columnCrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ResponsiveRowColumnItem(
                      child: Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                Image.asset(grantPictures.value[index]).image,
                            fit: BoxFit.contain)),
                  )),
                  ResponsiveRowColumnItem(
                      child: Text(
                    textAlign: TextAlign.center,
                    grantTypes.value[index],
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyMedium
                        ?.copyWith(color: const Color(0xff16437B)),
                  )),
                ],
              ),
            ),
          ),
        ),
        itemCount: 3,
      ),
    );
  }
}
