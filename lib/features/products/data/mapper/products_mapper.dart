import '../../../categories/data/mapper/categories_mapper.dart';
import '../../../categories/domain/entities/categories_res_entity.dart';
import '../../domain/entities/product_entity.dart';
import 'package:to_arabic_number/to_arabic_number.dart';

import '../../../../config/image_providers_config.dart';
import '../model/product_model.dart';

extension ProductModelMapper on ProductModel {
  ProductEntity toEntity() {
    return ProductEntity(
      id: id.toString(),
      name: name ?? '',
      title: title ?? '',
      description: description ?? '',
      price: Arabic.number(price ?? ''),
      image: ImageProvidersConfig.resolveImageUrl(image),
      category: category?.toEntity() ?? CategoryEntity(),
      cookingMethods: cookingMethods
              ?.map((e) => e.toEntity())
              .toList() ??
          const [],
    );
  }
}

extension CookingMethodModelMapper on CookingMethodModel {
  CookingMethodEntity toEntity() {
    return CookingMethodEntity(
      id: id.toString(),
      name: name ?? '',
      title: title ?? '',
      description: description ?? '',
      price: Arabic.number(price ?? ''),
      image: ImageProvidersConfig.resolveImageUrl(image),
      isDefault: isDefault ?? false,
      isMostPopular: isMostPopular ?? false,
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
      image: ImageProvidersConfig.resolveImageUrl(image),
    );
  }
}
