import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../core/data/models/meta.dart';
import '../../../../orders_statuses/data/model/order_status_model.dart';
part 'orders_res_model.freezed.dart';
part 'orders_res_model.g.dart';

@freezed
abstract class OrdersResModel with _$OrdersResModel {
  const factory OrdersResModel({
    @JsonKey(name: "data") List<OrderModel>? orders,
    @JsonKey(name: "meta") MetaModel? meta,
  }) = _OrdersResModel;
  factory OrdersResModel.fromJson(Map<String, dynamic> json) =>
      _$OrdersResModelFromJson(json);
}

@freezed
abstract class OrderModel with _$OrderModel {
  const factory OrderModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "reference_id") int? referenceId,
    @JsonKey(name: "salla_order_status") OrderStatusModel? sallaOrderStatus,
    @JsonKey(name: "salla_order_items")
    List<SallaOrderItemModel>? sallaOrderItems,
    CustomerModel? customer,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "updated_at") String? updatedAt,
  }) = _OrderModel;
  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
abstract class CustomerModel with _$CustomerModel {
  const factory CustomerModel({
    @JsonKey(name: "full_name") String? fullName,
    int? mobile,
    String? email,
  }) = _CustomerModel;
  factory CustomerModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerModelFromJson(json);
}

@freezed
abstract class SallaOrderItemModel with _$SallaOrderItemModel {
  const factory SallaOrderItemModel({
    int? id,
    String? productName,
    @JsonKey(name: "printed_name") String? printedName,
    List<UnitModel>? units,
    @JsonKey(name: "distribution_country") String? distributionCountry,
    String? additions,
  }) = _SallaOrderItemModel;
  factory SallaOrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$SallaOrderItemModelFromJson(json);
}

@freezed
abstract class UnitModel with _$UnitModel {
  const factory UnitModel({
    int? id,
    @JsonKey(name: "unit_number") int? unitNumber,
    @JsonKey(name: "execution_number") String? executionNumber,
    @JsonKey(name: "documentation_link") String? documentationLink,
  }) = _UnitModel;
  factory UnitModel.fromJson(Map<String, dynamic> json) =>
      _$UnitModelFromJson(json);
}

@freezed
abstract class ValueModel with _$ValueModel {
  const factory ValueModel({int? id, String? name}) = _ValueModel;
  factory ValueModel.fromJson(Map<String, dynamic> json) =>
      _$ValueModelFromJson(json);
}

@freezed
abstract class CookingMethodModel with _$CookingMethodModel {
  const factory CookingMethodModel({int? id, String? name}) =
      _CookingMethodModel;
  factory CookingMethodModel.fromJson(Map<String, dynamic> json) =>
      _$CookingMethodModelFromJson(json);
}
