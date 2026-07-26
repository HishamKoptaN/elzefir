// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FilterModel _$FilterModelFromJson(Map<String, dynamic> json) => _FilterModel(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  type: json['type'] as String?,
  values: (json['values'] as List<dynamic>?)
      ?.map((e) => ValueModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FilterModelToJson(_FilterModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'values': instance.values,
    };

_ValueModel _$ValueModelFromJson(Map<String, dynamic> json) => _ValueModel(
  id: (json['id'] as num?)?.toInt(),
  value: json['value'] as String?,
);

Map<String, dynamic> _$ValueModelToJson(_ValueModel instance) =>
    <String, dynamic>{'id': instance.id, 'value': instance.value};
