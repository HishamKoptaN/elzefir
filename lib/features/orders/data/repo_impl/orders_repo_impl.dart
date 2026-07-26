import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../core/errors/error_handler.dart';
import '../../../../core/globals/database/shared_pref_helper.dart';
import '../../../../core/globals/database/shared_pref_keys.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/repo/orders_repo.dart';
import '../datasources/orders_api.dart';
import '../mappers/orders_res_mapper.dart';
import '../models/order/orders_filter_model.dart';

@Singleton(as: OrdersRepo)
class OrdersRepoImpl implements OrdersRepo {
  final OrdersApi ordersApi;
  OrdersRepoImpl(this.ordersApi);

  @override
  Future<ApiResult<OrdersResEntity>> getOrders({
    int? page,
    required int perPage,
    OrdersFilterModel? ordersFilter,
  }) async {
    try {
      final res = await ordersApi.getOrders(
        page: page,
        perPage: perPage,
        query: ordersFilter?.searchQuery,
        startDate: ordersFilter?.fromDate != null
            ? ordersFilter!.fromDate.toString()
            : null,
        endDate: ordersFilter?.toDate != null
            ? ordersFilter!.toDate.toString()
            : null,
        status: ordersFilter?.selectedStatus?.original?.id,
        productId: ordersFilter?.product?.id,
        unifiedValueIds: ordersFilter?.unifiedValueIds,
      );

      return ApiResult.success(
        data: await _applyGeneratedPdfState(res.toEntity()),
      );
    } catch (error, stackTrace) {
      return ApiResult.failure(
        errorInfo: ErrorHandler.handle(error, stackTrace),
      );
    }
  }

  Future<OrdersResEntity> _applyGeneratedPdfState(
    OrdersResEntity entity,
  ) async {
    return entity.copyWith(
      orders: await Future.wait(entity.orders!.map(_updateOrder)),
    );
  }

  Future<OrderEntity> _updateOrder(OrderEntity order) async {
    return order.copyWith(
      sallaOrderItems: await Future.wait(
        order.sallaOrderItems!.map((item) => _updateItem(item: item)),
      ),
    );
  }

  Future<SallaOrderItemEntity> _updateItem({
    required SallaOrderItemEntity item,
  }) async {
    final units = <UnitEntity>[];
    for (final unit in item.units ?? []) {
      final generated = await SharedPrefHelper.getBool(
        key: '${SharedPrefKeys.isUnitPdfGenerated}${unit.id}',
      );
      units.add(unit.copyWith(isGeneratedPdf: generated));
    }
    return item.copyWith(units: units);
  }
}
