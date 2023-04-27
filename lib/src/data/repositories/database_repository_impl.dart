import '../../domain/models/article.dart';
import '../../domain/repositories/database_repository.dart';
import '../datasources/local/app_database.dart';

class DatabaseRepositoryImpl implements DatabaseRepository {
  final AppDataBase _appDataBase;

  DatabaseRepositoryImpl(this._appDataBase);

  @override
  Future<List<Article>> getSavedArticles() async {
    return _appDataBase.articleDao.getAllArticles();
  }

  @override
  Future<void> removeArticle(Article article) async {
    return _appDataBase.articleDao.deleteArticle(article);
  }

  @override
  Future<void> saveArticle(Article article) async {
    return _appDataBase.articleDao.insertArticle(article);
  }
}
