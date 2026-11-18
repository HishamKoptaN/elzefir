import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../categories/domain/entities/categories_res_entity.dart';
part 'product_entity.freezed.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const ProductEntity._();

  const factory ProductEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String title,
    @Default('') String description,
    @Default('') String price,
    @Default('') String priceUnit,
    @Default('') String image,
    @Default(CategoryEntity()) CategoryEntity category,
    @Default(<CookingMethodEntity>[]) List<CookingMethodEntity> cookingMethods,
  }) = _ProductEntity;

  /// وحدة البيع الظاهرة للمستخدم (كجم / طبق / قطعة).
  /// المنتجات القديمة اللي ملهاش وحدة في الداتا بترجع «كجم».
  String get priceUnitLabel {
    final unit = priceUnit.trim();
    return unit.isEmpty ? 'كجم' : unit;
  }

  /// السعر كرقم، مع تحويل الأرقام العربية (٠-٩) وعلامة العشرية العربية.
  double? get priceValue {
    final normalized = price
        .replaceAllMapped(
          RegExp('[٠-٩]'),
          (match) => '${match[0]!.codeUnitAt(0) - 0x0660}',
        )
        .replaceAll('٫', '.')
        .replaceAll(RegExp(r'[^0-9.]'), '');
    return double.tryParse(normalized);
  }
}

@freezed
abstract class CookingMethodEntity with _$CookingMethodEntity {
  const factory CookingMethodEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String title,
    @Default('') String description,
    @Default('') String price,
    @Default('') String image,
    @Default(false) bool isDefault,
    @Default(false) bool isMostPopular,
  }) = _CookingMethodEntity;
}

@freezed
abstract class AdditionEntity with _$AdditionEntity {
  const factory AdditionEntity({
    @Default('') String id,
    @Default('') String name,
    @Default('') String title,
    @Default('') String description,
    @Default('') String price,
    @Default('') String image,
  }) = _AdditionEntity;
}
