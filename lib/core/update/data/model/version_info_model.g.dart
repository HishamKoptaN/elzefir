// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VersionInfoModel _$VersionInfoModelFromJson(Map<String, dynamic> json) =>
    _VersionInfoModel(
      buildNumber: json['buildNumber'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$VersionInfoModelToJson(_VersionInfoModel instance) =>
    <String, dynamic>{
      'buildNumber': instance.buildNumber,
      'message': instance.message,
    };
