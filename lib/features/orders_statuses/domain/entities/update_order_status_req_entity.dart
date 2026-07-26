import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_order_status_req_entity.freezed.dart';
part 'update_order_status_req_entity.g.dart';

@freezed
abstract class UpdateOrderStatusReqEntity with _$UpdateOrderStatusReqEntity {
  factory UpdateOrderStatusReqEntity({
    required String? orderId,
    required int? statusId,
  }) = _UpdateOrderStatusReqEntity;
  factory UpdateOrderStatusReqEntity.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderStatusReqEntityFromJson(json);
}
