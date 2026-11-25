import 'dart:async';

import 'package:elzefir/core/networking/api_result.dart';
import 'package:elzefir/features/orders/data/models/order/orders_filter_model.dart';
import 'package:elzefir/features/orders/domain/entities/orders_res_entity.dart';
import 'package:elzefir/features/orders/domain/repo/orders_repo.dart';
import 'package:elzefir/features/orders/domain/usecases/orders_use_cases.dart';
import 'package:elzefir/features/orders/present/blocs/orders_bloc/orders_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakeRepo implements OrdersRepo {
  final first = Completer<ApiResult<OrdersResEntity>>();
  final second = Completer<ApiResult<OrdersResEntity>>();
  int _calls = 0;

  @override
  Future<ApiResult<OrdersResEntity>> getOrders({
    int? page,
    required int perPage,
    OrdersFilterModel? ordersFilter,
  }) {
    _calls++;
    return _calls == 1 ? first.future : second.future;
  }
}

void main() {
  test('a newer get cancels the previous in-flight request', () async {
    final repo = _FakeRepo();
    final bloc = OrdersBloc(OrdersUseCases(repo));
    addTearDown(bloc.close);

    bloc.add(const OrdersEvent.get(page: 1, perPage: 10));
    await pumpEventQueue();
    bloc.add(const OrdersEvent.get(page: 2, perPage: 10));
    await pumpEventQueue();

    repo.second.complete(
      ApiResult.success(
        data: OrdersResEntity(orders: [const OrderEntity(id: 'second')]),
      ),
    );
    repo.first.complete(
      ApiResult.success(
        data: OrdersResEntity(orders: [const OrderEntity(id: 'first')]),
      ),
    );
    await pumpEventQueue();

    final loaded = bloc.state.mapOrNull(loaded: (s) => s);
    expect(loaded, isNotNull);
    expect(loaded!.orders!.single.id, 'second');
  });
}
