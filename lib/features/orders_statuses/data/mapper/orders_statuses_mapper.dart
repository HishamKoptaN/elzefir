import '../../../../core/utils/color_formatter.dart';
import '../../domain/entities/order_status_entity.dart' as entity;
import '../model/order_status_model.dart' as model;

extension OrdersStatusesModelMapper on model.OrderStatusModel {
  entity.OrderStatusEntity toEntity() => entity.OrderStatusEntity(
    id: id,
    name: name,
    type: type,
    slug: slug,
    sort: sort,
    message: message,
    icon: icon,
    color: parseHex(hexString: color),
    isActive: isActive,
    original: original?.toEntity(),
  );
}

extension OriginalModelMapper on model.OriginalModel {
  entity.OriginalEntity toEntity() => entity.OriginalEntity(id: id, name: name);
}

extension OrdersStatusesEntityMapper on entity.OrderStatusEntity {
  model.OrderStatusModel toModel() => model.OrderStatusModel(
    id: id,
    name: name,
    type: type,
    slug: slug,
    sort: sort,
    message: message,
    icon: icon,
    isActive: isActive,
  );
}
