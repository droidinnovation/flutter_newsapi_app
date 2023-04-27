part of 'local_articles_cubit.dart';

abstract class LocalArticlesState extends Equatable {
  const LocalArticlesState({
    this.articles = const [],
  });

  final List<Article> articles;

  @override
  List<Object> get props => [articles];
}

class LocalArticlesLoading extends LocalArticlesState {
  const LocalArticlesLoading();
}

class LocalArticlesSuccess extends LocalArticlesState {
  const LocalArticlesSuccess({super.articles});
}

//class LocalArticlesInitial extends LocalArticlesState {}
