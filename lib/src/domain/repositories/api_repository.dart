import '../../utils/resources/data_state.dart';
import '../models/models.dart';

abstract class ApiRepository {
  Future<DataState<BreakingNewsResponse>> getBrakingNewsArticles({
    required BreakingNewsRequest request,
  });
}
