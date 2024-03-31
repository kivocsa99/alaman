import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/infrastructure/user/user.repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class PaginatedBeneficiariesNotifier
    extends StateNotifier<PaginatedBeneficiariesState> {
  final IUserRepository userRepository;

  PaginatedBeneficiariesNotifier(this.userRepository)
      : super(const PaginatedBeneficiariesState());

  Future<void> fetchBeneficiaries(
      {int page = 1,
      required int genderId,
      required int cityId,
      required int educationalYearId,
      required String age,
      required int scholarshipTypeId}) async {
    if (state.hasReachedMax) return;

    try {
      final response = await userRepository.searchBeneficiaries(
        genderId: genderId,
        cityId: cityId,
        educationalYearId: educationalYearId,
        age: age,
        scholarshipTypeId: scholarshipTypeId,
      );

      response.fold(
        (l) => state = state.copyWith(errorMessage: l.toString()),
        (r) {
          final newData = List<BeneficiaryModel>.from(state.beneficiaries)
            ..addAll(r.item1);
          state = state.copyWith(
            beneficiaries: newData,
            hasReachedMax: r.item2 == null,
            showDialog:
                r.item3, // Assuming r.item3 is the bool controlling the dialog
          );
        },
      );
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }

  void resetState() {
    state = const PaginatedBeneficiariesState();
  }

  void resetDialogFlag() {
    if (state.showDialog) {
      state = state.copyWith(showDialog: false);
    }
  }
}

class PaginatedBeneficiaryState {
  final List<BeneficiaryModel> beneficiary;
  final int currentPage;
  final bool hasReachedMax;
  final PaginatedBeneficiaryStatus status;

  PaginatedBeneficiaryState(
      {required this.beneficiary,
      required this.currentPage,
      required this.hasReachedMax,
      required this.status});

  factory PaginatedBeneficiaryState.initial() => PaginatedBeneficiaryState(
      beneficiary: [],
      currentPage: 1,
      hasReachedMax: false,
      status: PaginatedBeneficiaryStatus.initial);

  PaginatedBeneficiaryState copyWith({
    List<BeneficiaryModel>? beneficiary,
    int? currentPage,
    bool? hasReachedMax,
    PaginatedBeneficiaryStatus? status,
  }) {
    return PaginatedBeneficiaryState(
      beneficiary: beneficiary ?? this.beneficiary,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      status: status ?? this.status,
    );
  }
}

enum PaginatedBeneficiaryStatus { initial, success, failure }
// paginated_beneficiaries_state.dart

@immutable
class PaginatedBeneficiariesState {
  final List<BeneficiaryModel> beneficiaries;
  final bool hasReachedMax;
  final String? errorMessage;
  final bool showDialog; // Add this line

  const PaginatedBeneficiariesState({
    this.beneficiaries = const [],
    this.hasReachedMax = false,
    this.errorMessage,
    this.showDialog = false, // Initialize here
  });

  PaginatedBeneficiariesState copyWith({
    List<BeneficiaryModel>? beneficiaries,
    bool? hasReachedMax,
    String? errorMessage,
    bool? showDialog, // Add this line
  }) {
    return PaginatedBeneficiariesState(
      beneficiaries: beneficiaries ?? this.beneficiaries,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage,
      showDialog: showDialog ?? this.showDialog, // Add this line
    );
  }
}
