import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';

@immutable
class PaginatedBeneficiariesState {
  final List<BeneficiaryModel> beneficiaries;
  final bool hasReachedMax;
  final String? errorMessage;
  final bool isLoading;

  const PaginatedBeneficiariesState({
    this.beneficiaries = const [],
    this.hasReachedMax = false,
    this.errorMessage,
    this.isLoading = false,
  });

  PaginatedBeneficiariesState copyWith({
    List<BeneficiaryModel>? beneficiaries,
    bool? hasReachedMax,
    String? errorMessage,
    bool? isLoading,
  }) {
    return PaginatedBeneficiariesState(
      beneficiaries: beneficiaries ?? this.beneficiaries,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

class PaginatedBeneficiariesNotifier extends StateNotifier<PaginatedBeneficiariesState> {
  final IUserRepository userRepository;
  int currentPage = 1;

  PaginatedBeneficiariesNotifier(this.userRepository)
      : super(const PaginatedBeneficiariesState());

  Future<void> fetchBeneficiaries({
    required int genderId,
    required int cityId,
    required int educationalYearId,
    required String age,
    required int scholarshipTypeId,
    bool isNextPage = false,
  }) async {
    if (state.hasReachedMax) return;

    if (isNextPage) currentPage++;
    state = state.copyWith(isLoading: true);

    final response = await userRepository.searchBeneficiaries(
      genderId: genderId,
      cityId: cityId,
      educationalYearId: educationalYearId,
      age: age,
      scholarshipTypeId: scholarshipTypeId,
      page: currentPage,
    );

    response.fold(
      (l) => state = state.copyWith(errorMessage: l.toString(), isLoading: false),
      (r) {
        final newData = List<BeneficiaryModel>.from(state.beneficiaries)..addAll(r.item1);
        state = state.copyWith(
          beneficiaries: newData,
          hasReachedMax: r.item2 == null,
          isLoading: false,
        );
      },
    );
  }

  void resetState() {
    currentPage = 1;
    state = const PaginatedBeneficiariesState();
  }
}
