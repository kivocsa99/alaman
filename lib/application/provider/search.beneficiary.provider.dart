import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search.beneficiary.provider.g.dart';

@riverpod
class PaginatedBeneficiaryNotifier extends _$PaginatedBeneficiaryNotifier {
  @override
  PaginatedBeneficiaryState build() => PaginatedBeneficiaryState.initial();
  Future<void> fetchsearch({
    int? genderId,
    int? cityId,
    int? educationalYearId,
    String? age,
    int? scholarshipTypeId,
    bool isRefresh = false,
  }) async {
    if (isRefresh) {
      state = PaginatedBeneficiaryState.initial();
    }

    final response = await ref.read(userRepositoryProvider).searchBeneficiaries(
          genderId: genderId,
          cityId: cityId,
          educationalYearId: educationalYearId,
          age: age,
          scholarshipTypeId: scholarshipTypeId,
        );

    response.fold(
      (failure) =>
          state = state.copyWith(status: PaginatedBeneficiaryStatus.failure),
      (news) {
        state = state.copyWith(
          status: PaginatedBeneficiaryStatus.success,
          beneficiary: [...state.beneficiary, ...news.item1],
          currentPage: state.currentPage + 1,
          hasReachedMax: news.item2 == null
              ? true
              : false, // Assuming the API returns an empty list when there are no more pages
        );
      },
    );
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
