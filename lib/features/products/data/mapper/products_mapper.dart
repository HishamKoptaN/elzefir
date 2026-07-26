import 'package:alzefr/features/products/data/model/product_model.dart';

import '../../../categories/data/mapper/categories_mapper.dart';
import '../../../categories/domain/entities/categories_res_entity.dart';
import '../../domain/entities/product_entity.dart';

extension ProductModelMapper on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id.toString(),
      name: name ?? '',
      title: title ?? '',
      description: description ?? '',
      price: price ?? '',
      image: image ?? '',
      category: category?.toEntity() ?? CategoryEntity(),
    );
  }
}

extension AdditionModelMapper on AdditionModel {
  AdditionEntity toEntity() {
    return AdditionEntity(
      id: id.toString(),
      name: name ?? '',
      title: title ?? '',
      description: description ?? '',
      price: price ?? '',
      image: image ?? '',
    );
  }
}
