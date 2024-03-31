import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectedBeneficiariesNotifier extends StateNotifier<Map<String, double>> {
  SelectedBeneficiariesNotifier() : super({});

  double get totalAmount => state.values.fold(0, (prev, amount) => prev + amount);

  void selectBeneficiary(String id, double amount) {
    state = {...state, id: amount};
  }

  void deselectBeneficiary(String id) {
    final newState = Map<String, double>.from(state);
    newState.remove(id);
    state = newState;
  }

  bool isSelected(String id) => state.containsKey(id);
}
final selectedBeneficiariesProvider = StateNotifierProvider<SelectedBeneficiariesNotifier, Map<String, double>>((ref) {
  return SelectedBeneficiariesNotifier();
});
