import '../../../utils/constants/constant.dart';

class BreakingNewsRequest {
  final String apiKey;
  final String source;
  final int page;
  final int pageSize;

  BreakingNewsRequest({
    this.apiKey = defaultApiKey,
    this.source = 'bbc-news, abc-news',
    this.page = 1,
    this.pageSize = defaultPageSize,
  });
}
