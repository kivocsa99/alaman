import 'package:alaman/constants.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class NotificationDialog extends HookConsumerWidget {
  final String? id;
  final String? notificationType;
  const NotificationDialog({this.notificationType, super.key, this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(32.0))),
      contentPadding: const EdgeInsets.only(top: 10.0),
      content: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset("assets/notification.json", width: 100, height: 100),
            const Padding(
              padding: EdgeInsets.only(left: 40.0, right: 10.0),
              child: Text("You have a new notification"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(FontAwesomeIcons.xmark),
                  onPressed: () {
                    context.router.pop();
                  },
                  color: Colors.red,
                ),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.check),
                  onPressed: () {
                    context.router.push(pageCase(type: notificationType, id: id));
                  },
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
