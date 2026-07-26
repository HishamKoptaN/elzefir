import '../../domain/entities/categories_res_entity.dart';
import '../model/categories_res_model.dart';

extension SallaOptionCategoryModelMapper on CategoryModel {
  CategoryEntity toEntity() {
    return CategoryEntity(id: id ?? 0, name: name ?? '');
  }
}
