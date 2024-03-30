import 'package:alaman/presentation/widgets/change_field_bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileContainer extends HookConsumerWidget {
  final String? title;
  final String? description;
  final VoidCallback? ontap;
  const ProfileContainer(
      {super.key, this.ontap, required this.title, required this.description});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title!,
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ).tr(),
            Text(
              description!,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyMedium
                  ?.copyWith(color: Color(0xff16437B)),
            ),
          ],
        ),
      ),
    );
  }
}
