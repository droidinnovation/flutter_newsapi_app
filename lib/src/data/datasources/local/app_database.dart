import 'package:floor/floor.dart';

import '../../../domain/models/models.dart';
import 'converters/source_type_converter.dart';
import 'dao/article_dao.dart';

part 'app_database.g.dart';

@TypeConverters([SourceTypeConverter])
@Database(version: 1, entities: [Article])
abstract class AppDataBase extends FloorDatabase {
  ArticleDao get articleDao;
}
