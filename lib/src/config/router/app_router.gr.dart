// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    BreakingNewsViewRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const BreakingNewsView(),
      );
    },
    ArticleDetailViewRoute.name: (routeData) {
      final args = routeData.argsAs<ArticleDetailViewRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: ArticleDetailView(
          key: args.key,
          article: args.article,
        ),
      );
    },
    SavedArticlesViewRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SavedArticlesView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          BreakingNewsViewRoute.name,
          path: '/',
        ),
        RouteConfig(
          ArticleDetailViewRoute.name,
          path: '/article-detail-view',
        ),
        RouteConfig(
          SavedArticlesViewRoute.name,
          path: '/saved-articles-view',
        ),
      ];
}

/// generated route for
/// [BreakingNewsView]
class BreakingNewsViewRoute extends PageRouteInfo<void> {
  const BreakingNewsViewRoute()
      : super(
          BreakingNewsViewRoute.name,
          path: '/',
        );

  static const String name = 'BreakingNewsViewRoute';
}

/// generated route for
/// [ArticleDetailView]
class ArticleDetailViewRoute extends PageRouteInfo<ArticleDetailViewRouteArgs> {
  ArticleDetailViewRoute({
    Key? key,
    required Article article,
  }) : super(
          ArticleDetailViewRoute.name,
          path: '/article-detail-view',
          args: ArticleDetailViewRouteArgs(
            key: key,
            article: article,
          ),
        );

  static const String name = 'ArticleDetailViewRoute';
}

class ArticleDetailViewRouteArgs {
  const ArticleDetailViewRouteArgs({
    this.key,
    required this.article,
  });

  final Key? key;

  final Article article;

  @override
  String toString() {
    return 'ArticleDetailViewRouteArgs{key: $key, article: $article}';
  }
}

/// generated route for
/// [SavedArticlesView]
class SavedArticlesViewRoute extends PageRouteInfo<void> {
  const SavedArticlesViewRoute()
      : super(
          SavedArticlesViewRoute.name,
          path: '/saved-articles-view',
        );

  static const String name = 'SavedArticlesViewRoute';
}
