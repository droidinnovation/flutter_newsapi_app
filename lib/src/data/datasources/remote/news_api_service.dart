import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/models/models.dart';
import '../../../utils/constants/constant.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponse>> getBreakingNewsArticles({
    @Query('apiKey') String? apiKey,
    @Query('sources') String? sources,
    @Query('page') int? page,
    @Query('pageSize') int? pageSize,
  });

  //@Query('country') String? country,
  // @Query('category') String? category,
}
