import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/errors/models/error_info.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../orders/present/blocs/orders_bloc/orders_bloc.dart';
import '../../../domain/entities/order_status_entity.dart';
import '../../../domain/entities/update_order_status_req_entity.dart';
import '../../../domain/use_cases/orders_statuses_use_cases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders_statuses_bloc.freezed.dart';
part 'orders_statuses_event.dart';
part 'orders_statuses_state.dart';

@singleton
class OrdersStatusesBloc
    extends Bloc<OrdersStatusesEvent, OrdersStatusesState> {
  final OrdersStatusesUseCases ordersStatusesUseCases;
  final OrdersBloc ordersBloc;
  OrdersStatusesBloc({
    required this.ordersStatusesUseCases,
    required this.ordersBloc,
  }) : super(const OrdersStatusesState.initial()) {
    on<OrdersStatusesEvent>((event, emit) async {
      await event.when(
        get: () async {
          emit(const OrdersStatusesState.loading());
          final result = await ordersStatusesUseCases.get();
          await result.when(
            success: (res) async {
              emit(OrdersStatusesState.loaded(ordersStatuses: res ?? []));
            },
            failure: (apiErrorModel) async {
              emit(OrdersStatusesState.failure(apiErrorModel: apiErrorModel));
            },
          );
        },
      );
    });
  }
}
