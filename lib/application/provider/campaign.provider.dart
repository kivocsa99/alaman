import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/campaigns/model/campaign.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'campaign.provider.g.dart';

@riverpod
class PaginatedCampaignNotifier extends _$PaginatedCampaignNotifier {
  @override
  PaginatedCampainState build() => PaginatedCampainState.initial();
  Future<void> fetchsearch({

    bool isRefresh = false,
  }) async {
    if (isRefresh) {
      state = PaginatedCampainState.initial();
    }

    final response = await ref.read(userRepositoryProvider).getCampaigns();

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

class PaginatedCampainState {
  final List<CampaignModel> beneficiary;
  final int currentPage;
  final bool hasReachedMax;
  final PaginatedBeneficiaryStatus status;

  PaginatedCampainState(
      {required this.beneficiary,
      required this.currentPage,
      required this.hasReachedMax,
      required this.status});

  factory PaginatedCampainState.initial() => PaginatedCampainState(
      beneficiary: [],
      currentPage: 1,
      hasReachedMax: false,
      status: PaginatedBeneficiaryStatus.initial);

  PaginatedCampainState copyWith({
    List<CampaignModel>? beneficiary,
    int? currentPage,
    bool? hasReachedMax,
    PaginatedBeneficiaryStatus? status,
  }) {
    return PaginatedCampainState(
      beneficiary: beneficiary ?? this.beneficiary,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      status: status ?? this.status,
    );
  }
}

enum PaginatedBeneficiaryStatus { initial, success, failure }
