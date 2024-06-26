import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/presentation/widgets/request_bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GrantsGridView extends HookConsumerWidget {
  const GrantsGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final grants = useState<List<Map<String, dynamic>>>([
      {
        'title': "alamanreq",
        'description': 'Providing financial\nassistance for teens',
        'image': 'assets/amanreq.png',
      },
      {
        'title': "elegibility",
        'description': 'Give a portion of your\nwealth to help those in',
        'image': 'assets/elegibity.png',
      },
      {
        'title': 'trainingreq',
        'description': 'Spread kindness and\ncontribute funds to help',
        'image': 'assets/training.png',
      },
    ]);
        final locale = ref.watch(languageHiveNotifierProvider);

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemCount: grants.value.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () async {
            final result = await ref.read(getGenericProvider.future);
            return result.fold(
                (l) => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(l.message ?? "internetconnection").tr())),
                (r) async {
              index != 1
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
                  : null;
            });
          },
          child: Card(
            color: Colors.white,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  grants.value[index]['image'],
                  width: 100,
                  height: 100,
                ),
                const SizedBox(height: 10),
                Text(
                  grants.value[index]['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ).tr(),
              ],
            ),
          ),
        );
      },
    );
  }
}
