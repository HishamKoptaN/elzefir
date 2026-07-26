import '../../../../core/data/mapper/meta_mapper.dart';
import '../../../../core/utils/date/date_formatter.dart';
import '../../../../core/utils/extensions/salla_date_time_extension.dart';
import '../../../orders_statuses/data/mapper/orders_statuses_mapper.dart';
import '../models/order/orders_res_model.dart';
import '../../domain/entities/orders_res_entity.dart';

//! OrdersRes
extension OrdersResMapper on OrdersResModel {
  OrdersResEntity toEntity() {
    return OrdersResEntity(
      orders: orders?.map((c) => c.toEntity()).toList() ?? [],
      meta: meta?.toEntity(),
    );
  }
}

extension OrderMapper on OrderModel {
  OrderEntity toEntity() {
    return OrderEntity(
      id: id.toString(),
      referenceId: referenceId.toString(),
      orderStatus: sallaOrderStatus?.toEntity(),
      sallaOrderItems:
          sallaOrderItems
              ?.map(
                (c) => c.toEntity(
                  createdAt: formatDate(dateTime: createdAt ?? ''),
                ),
              )
              .toList() ??
          [],
      customer: customer?.toEntity(),
      createdAt: createdAt.toSallaDateTimeEntity(),
      updatedAt: updatedAt.toSallaDateTimeEntity(),
    );
  }
}

extension OrderItemMapper on SallaOrderItemModel {
  SallaOrderItemEntity toEntity({required String createdAt}) {
    return SallaOrderItemEntity(
      id: id.toString(),
      distributionCountry: distributionCountry ?? '',
      productName: productName ?? '',
      printedName: printedName ?? '',
      units:
          units?.map((e) {
            return e.toEntity();
          }).toList() ??
          [],
      additions: additions,
    );
  }
}

extension UnitMapper on UnitModel {
  UnitEntity toEntity() {
    return UnitEntity(
      id: id.toString(),
      executionNumber: executionNumber,
      documentationLink: documentationLink,
      unitNumber: unitNumber.toString(),
    );
  }
}

extension ClientMapper on CustomerModel {
  ClientEntity toEntity() {
    return ClientEntity(
      fullName: fullName ?? '',
      mobile: mobile.toString(),
      email: email ?? '',
    );
  }
}

extension ValueMapper on ValueModel {
  ValueEntity toEntity() {
    return ValueEntity(id: id?.toString(), name: name);
  }
}
