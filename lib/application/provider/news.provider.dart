import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news.provider.g.dart';
// final paginatedNewsProvider = StateNotifierProvider<PaginatedNewsNotifier, PaginatedNewsState>((ref) {
//   return PaginatedNewsNotifier(ref.read);
// });
@riverpod
class PaginatedNewsNotifier extends _$PaginatedNewsNotifier {

  @override
  PaginatedNewsState build() => PaginatedNewsState.initial();
  Future<void> fetchNews({bool isRefresh = false}) async {
    if (isRefresh) {
      state = PaginatedNewsState.initial();
    }

    final currentPage = state.currentPage;
    final response = await ref.read(userRepositoryProvider).getNews(page: currentPage + 1);

    response.fold(
      (failure) => state = state.copyWith(status: PaginatedNewsStatus.failure),
      (news) {
        state = state.copyWith(
          status: PaginatedNewsStatus.success,
          news: [...state.news, ...news],
          currentPage: state.currentPage + 1,
          hasReachedMax: news.isEmpty, // Assuming the API returns an empty list when there are no more pages
        );
      },
    );
  }
}

class PaginatedNewsState {
  final List<NewsModel> news;
  final int currentPage;
  final bool hasReachedMax;
  final PaginatedNewsStatus status;

  PaginatedNewsState({required this.news, required this.currentPage, required this.hasReachedMax, required this.status});

  factory PaginatedNewsState.initial() => PaginatedNewsState(news: [], currentPage: 0, hasReachedMax: false, status: PaginatedNewsStatus.initial);

  PaginatedNewsState copyWith({
    List<NewsModel>? news,
    int? currentPage,
    bool? hasReachedMax,
    PaginatedNewsStatus? status,
  }) {
    return PaginatedNewsState(
      news: news ?? this.news,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      status: status ?? this.status,
    );
  }
}

enum PaginatedNewsStatus { initial, success, failure }
