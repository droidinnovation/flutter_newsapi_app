import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/models/models.dart';
import '../../../domain/repositories/api_repository.dart';
import '../../../presentation/cubits/base/base_cubit.dart';
import '../../../utils/constants/constant.dart';
import '../../../utils/resources/data_state.dart';
part 'remote_articles_state.dart';

class RemoteArticlesCubit
    extends BaseCubit<RemoteArticlesState, List<Article>> {
  RemoteArticlesCubit(this._apiRepository)
      : super(const RemoteArticlesLoading(), []);

  final ApiRepository _apiRepository;

  int _page = 1;

  Future<void> getBreakingNewsArticles() async {
    if (isBusy) return;

    await run(() async {
      final response = await _apiRepository.getBrakingNewsArticles(
        request: BreakingNewsRequest(page: _page),
      );
      if (response is DataSuccess) {
        final articles = response.data!.articles;
        final noMoreData = articles.length < defaultPageSize;

        data.addAll(articles);
        _page++;
        emit(RemoteArticlesSuccess(articles: data, noMoreData: noMoreData));
      } else if (response is DataFailed) {
        emit(RemoteArticlesFailed(error: response.error));
      }
    });
  }
}
