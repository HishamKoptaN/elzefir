import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/error_handler.dart';
import '../../data/data_sources/categories_data_src.dart';
import '../../data/mapper/categories_mapper.dart';
import '../../data/repo/categories_repo.dart';
import '../entities/categories_res_entity.dart';

@Singleton(as: CategoriesRepo)
class SallaOptionCategoriesRepoImpl implements CategoriesRepo {
  final CategoriesDataSrc categoriesDataSrc;
  SallaOptionCategoriesRepoImpl(this.categoriesDataSrc);
  @override
  Future<ApiResult<List<CategoryEntity>>> get() async {
    try {
      return await categoriesDataSrc.get().then((res) {
        return ApiResult.success(
          data: res.map((e) {
            return e.toEntity();
          }).toList(),
        );
      });
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }
}
