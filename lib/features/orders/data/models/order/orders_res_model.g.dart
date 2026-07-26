// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrdersResModel _$OrdersResModelFromJson(Map<String, dynamic> json) =>
    _OrdersResModel(
      orders: (json['data'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrdersResModelToJson(_OrdersResModel instance) =>
    <String, dynamic>{'data': instance.orders, 'meta': instance.meta};

_OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => _OrderModel(
  id: (json['id'] as num?)?.toInt(),
  referenceId: (json['reference_id'] as num?)?.toInt(),
  sallaOrderStatus: json['salla_order_status'] == null
      ? null
      : OrderStatusModel.fromJson(
          json['salla_order_status'] as Map<String, dynamic>,
        ),
  sallaOrderItems: (json['salla_order_items'] as List<dynamic>?)
      ?.map((e) => SallaOrderItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  customer: json['customer'] == null
      ? null
      : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$OrderModelToJson(_OrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reference_id': instance.referenceId,
      'salla_order_status': instance.sallaOrderStatus,
      'salla_order_items': instance.sallaOrderItems,
      'customer': instance.customer,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_CustomerModel _$CustomerModelFromJson(Map<String, dynamic> json) =>
    _CustomerModel(
      fullName: json['full_name'] as String?,
      mobile: (json['mobile'] as num?)?.toInt(),
      email: json['email'] as String?,
    );

Map<String, dynamic> _$CustomerModelToJson(_CustomerModel instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'mobile': instance.mobile,
      'email': instance.email,
    };

_SallaOrderItemModel _$SallaOrderItemModelFromJson(Map<String, dynamic> json) =>
    _SallaOrderItemModel(
      id: (json['id'] as num?)?.toInt(),
      productName: json['productName'] as String?,
      printedName: json['printed_name'] as String?,
      units: (json['units'] as List<dynamic>?)
          ?.map((e) => UnitModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      distributionCountry: json['distribution_country'] as String?,
      additions: json['additions'] as String?,
    );

Map<String, dynamic> _$SallaOrderItemModelToJson(
  _SallaOrderItemModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'productName': instance.productName,
  'printed_name': instance.printedName,
  'units': instance.units,
  'distribution_country': instance.distributionCountry,
  'additions': instance.additions,
};

_UnitModel _$UnitModelFromJson(Map<String, dynamic> json) => _UnitModel(
  id: (json['id'] as num?)?.toInt(),
  unitNumber: (json['unit_number'] as num?)?.toInt(),
  executionNumber: json['execution_number'] as String?,
  documentationLink: json['documentation_link'] as String?,
);

Map<String, dynamic> _$UnitModelToJson(_UnitModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unit_number': instance.unitNumber,
      'execution_number': instance.executionNumber,
      'documentation_link': instance.documentationLink,
    };

_ValueModel _$ValueModelFromJson(Map<String, dynamic> json) => _ValueModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
);

Map<String, dynamic> _$ValueModelToJson(_ValueModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_CookingMethodModel _$CookingMethodModelFromJson(Map<String, dynamic> json) =>
    _CookingMethodModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$CookingMethodModelToJson(_CookingMethodModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
