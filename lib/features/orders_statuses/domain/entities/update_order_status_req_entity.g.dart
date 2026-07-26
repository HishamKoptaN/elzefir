// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_req_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateOrderStatusReqEntity _$UpdateOrderStatusReqEntityFromJson(
  Map<String, dynamic> json,
) => _UpdateOrderStatusReqEntity(
  orderId: json['orderId'] as String?,
  statusId: (json['statusId'] as num?)?.toInt(),
);

Map<String, dynamic> _$UpdateOrderStatusReqEntityToJson(
  _UpdateOrderStatusReqEntity instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'statusId': instance.statusId,
};
