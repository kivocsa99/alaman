import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'dart:math';
part 'hive.notification.provider.g.dart';

@riverpod
class NotificationHiveNotifier extends _$NotificationHiveNotifier {
  @override
  int? build() {
    final int pastLength = Hive.box("notification").get('length', defaultValue: 0);
    final int currentLength = ref.read(getNotificationsHistoryProvider).maybeWhen(
          orElse: () => 0,
          data: (data) => data.fold((l) => 0, (r) => r.length),
        );
    return max(0, currentLength - pastLength);
  }

  void checkNotificationsLength() async {
    final notifications = ref.read(getNotificationsHistoryProvider);
    notifications.maybeWhen(
      orElse: () => state = 0,
      data: (data) {
        final int pastLength = Hive.box("notification").get('length', defaultValue: 0);
        final int currentLength = data.fold((l) => 0, (r) => r.length);
        state = max(0, currentLength - pastLength);
      },
    );
  }

  Future<void> resetCount() async {
    final notifications = ref.read(getNotificationsHistoryProvider);
    final int currentLength = notifications.maybeWhen(
      orElse: () => 0,
      data: (data) => data.fold((l) => 0, (r) => r.length),
    );
    await Hive.box('notification').put('length', currentLength);
    state = 0;
  }

  Future<void> deleteCount() async {
    await clearBox();
    state = null;
  }

  Future<void> clearBox() async {
    await Hive.box('notification').clear();
    await Hive.box('notification').compact();
  }
}
