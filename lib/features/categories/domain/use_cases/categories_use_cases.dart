import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../data/repo/categories_repo.dart';
import '../entities/categories_res_entity.dart';

@singleton
class CategoriesUseCase {
  final CategoriesRepo categoriesRepo;
  CategoriesUseCase({required this.categoriesRepo});
  Future<ApiResult<List<CategoryEntity>>> get() async {
    return await categoriesRepo.get();
  }
}
