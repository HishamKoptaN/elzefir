import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data/entities/formatted_date_time_entity.dart';
import '../../../../core/data/entities/meta_entity.dart';
import '../../../orders_statuses/domain/entities/order_status_entity.dart';
part 'orders_res_entity.freezed.dart';

@freezed
abstract class OrdersResEntity with _$OrdersResEntity {
  const factory OrdersResEntity({List<OrderEntity>? orders, MetaEntity? meta}) =
      _OrdersResEntity;
}

@freezed
abstract class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    String? id,
    String? referenceId,
    OrderStatusEntity? orderStatus,
    List<SallaOrderItemEntity>? sallaOrderItems,
    ClientEntity? customer,
    FormattedDateTimeEntity? createdAt,
    FormattedDateTimeEntity? updatedAt,
  }) = _OrderEntity;
}

@freezed
abstract class ClientEntity with _$ClientEntity {
  const factory ClientEntity({
    String? fullName,
    String? mobile,
    String? email,
    String? country,
  }) = _ClientEntity;
}

@freezed
abstract class UnitEntity with _$UnitEntity {
  const factory UnitEntity({
    String? id,
    String? unitNumber,
    String? executionNumber,
    String? documentationLink,
    @Default(true) bool isSelected,
    @Default(false) bool isGeneratedPdf,
    FormattedDateTimeEntity? createdAt,
    FormattedDateTimeEntity? updatedAt,
  }) = _UnitEntity;
}

@freezed
abstract class SallaOrderItemEntity with _$SallaOrderItemEntity {
  const factory SallaOrderItemEntity({
    String? id,
    String? printedName,
    String? productName,
    String? quantity,
    String? distributionCountry,
    List<UnitEntity>? units,
    String? additions,
  }) = _SallaOrderItemEntity;
}

@freezed
abstract class ValueEntity with _$ValueEntity {
  const factory ValueEntity({String? id, String? name}) = _ValueEntity;
}
