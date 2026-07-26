import '../../../../../../core/networking/api_result.dart';
import '../../domain/entities/categories_res_entity.dart';

abstract class CategoriesRepo {
  Future<ApiResult<List<CategoryEntity>>> get();
}
