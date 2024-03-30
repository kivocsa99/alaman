import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShopGridView extends HookConsumerWidget {
  const ShopGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final products = ref.watch(getProductsProvider);
    return products.when(
        data: (data) => data.fold(
            (l) => Text(l.message ?? "internetconnection").tr(),
            (result) => GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: result.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "$storageUrl${result[index].image}",
                              width: 100,
                              height: 100,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              locale == "en"
                                  ? result[index].name!
                                  : result[index].name_ar!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              result[index].price.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator());
  }
}
