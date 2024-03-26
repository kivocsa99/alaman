import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileContainer extends HookConsumerWidget {
  final String? title;
  final String? description;
  const ProfileContainer(
      {super.key, required this.title, required this.description});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.5, color: Colors.grey.withOpacity(0.5))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: Theme.of(context).primaryTextTheme.bodyMedium,
          ),
          Text(
            description!,
            style: Theme.of(context)
                .primaryTextTheme
                .bodyMedium
                ?.copyWith(color: Color(0xff16437B)),
          ),
        ],
      ),
    );
  }
}
