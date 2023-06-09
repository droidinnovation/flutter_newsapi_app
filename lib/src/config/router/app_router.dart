import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../../presentation/views/views.dart';
import '../../domain/models/models.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  routes: [
    AutoRoute(page: BreakingNewsView, initial: true),
    AutoRoute(page: ArticleDetailView),
    AutoRoute(page: SavedArticlesView),
  ],
)
class AppRouter extends _$AppRouter {}

// @AutoRouterConfig()
// class AppRouter extends _$AppRouter {
//   @override
//   RouteType get defaultRouteType => RouteType.adaptive();

//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(page: BreakingNewsView.page, initial: true),
//       ];
// }

final appRouter = AppRouter();
