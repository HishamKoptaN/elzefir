// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) =>
    _OrderStatusModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      slug: json['slug'] as String?,
      sort: (json['sort'] as num?)?.toInt(),
      message: json['message'] as String?,
      icon: json['icon'] as String?,
      isActive: json['is_active'] as bool?,
      color: json['color'] as String?,
      original: json['original'] == null
          ? null
          : OriginalModel.fromJson(json['original'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderStatusModelToJson(_OrderStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'slug': instance.slug,
      'sort': instance.sort,
      'message': instance.message,
      'icon': instance.icon,
      'is_active': instance.isActive,
      'color': instance.color,
      'original': instance.original,
    };

_OriginalModel _$OriginalModelFromJson(Map<String, dynamic> json) =>
    _OriginalModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$OriginalModelToJson(_OriginalModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
