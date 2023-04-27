import '../../domain/models/responses/breaking_news_response.dart';
import '../../domain/models/requests/breaking_news_request.dart';
import '../../domain/repositories/api_repository.dart';
import '../../utils/resources/data_state.dart';
import '../datasources/remote/news_api_service.dart';
import 'base/base_api_repository.dart';

class ApiRepositoryImpl extends BaseApiRepository implements ApiRepository {
  final NewsApiService _newApiServices;

  ApiRepositoryImpl(this._newApiServices);

  @override
  Future<DataState<BreakingNewsResponse>> getBrakingNewsArticles({
    required BreakingNewsRequest request,
  }) {
    return getStateOf<BreakingNewsResponse>(
      request: () => _newApiServices.getBreakingNewsArticles(
        apiKey: request.apiKey,
        sources: request.source,
        page: request.page,
        pageSize: request.pageSize,
      ),
    );
  }
}
