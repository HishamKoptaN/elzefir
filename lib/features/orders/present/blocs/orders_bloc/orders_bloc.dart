import 'package:bloc_concurrency/bloc_concurrency.dart';
import '../../../../../core/data/entities/meta_entity.dart';
import '../../../../../core/errors/models/error_info.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/models/order/orders_filter_model.dart';
import '../../../domain/entities/orders_res_entity.dart';
import '../../../domain/usecases/orders_use_cases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'orders_bloc.freezed.dart';
part 'orders_event.dart';
part 'orders_state.dart';

@singleton
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final OrdersUseCases ordersUseCases;
  OrdersBloc(this.ordersUseCases) : super(OrdersState.initial()) {
    on<OrdersEvent>((event, emit) async {
      restartable();
      await event.when(
        get: (page, perPage) async {
          await state.maybeMap(
            loaded: (state) async {
              try {
                emit(state.copyWith(isSearching: true));
                final res = await ordersUseCases.getOrders(
                  page: page,
                  perPage: (state.ordersFilter?.hasActiveFilters ?? false)
                      ? perPage
                      : 10,
                  ordersFilter: state.ordersFilter,
                );
                await res.when(
                  success: (res) async {
                    emit(
                      state.copyWith(
                        orders: res?.orders ?? [],
                        meta: res?.meta ?? MetaEntity(),
                        isSearching: false,
                        selectedCount: sumSelectedCount(orders: res?.orders),
                      ),
                    );
                  },
                  failure: (apiErrorModel) async {
                    emitFailure(apiErrorModel: apiErrorModel, emit: emit);
                  },
                );
              } catch (e) {
                emitFailure(
                  apiErrorModel: ErrorInfo(message: e.toString()),
                  emit: emit,
                );
              }
            },
            orElse: () async {
              try {
                emit(const OrdersState.loading());
                final res = await ordersUseCases.getOrders(
                  page: 1,
                  perPage: perPage,
                  ordersFilter: const OrdersFilterModel(),
                );
                await res.when(
                  success: (data) {
                    emit(
                      OrdersState.loaded(
                        orders: data?.orders ?? [],
                        meta: data?.meta ?? MetaEntity(),
                        ordersFilter: const OrdersFilterModel(),
                        selectedCount: sumSelectedCount(orders: data?.orders),
                      ),
                    );
                  },
                  failure: (error) {
                    emit(OrdersState.failure(apiErrorModel: error));
                  },
                );
              } catch (e) {
                emit(
                  OrdersState.failure(
                    apiErrorModel: ErrorInfo(message: e.toString()),
                  ),
                );
              }
            },
          );
        },
        filter: (ordersFilter, perPage) async {
          await state.mapOrNull(
            loaded: (state) async {
              try {
                emit(
                  state.copyWith(ordersFilter: ordersFilter, isSearching: true),
                );
                final res = await ordersUseCases.getOrders(
                  page: 1,
                  ordersFilter: ordersFilter,
                  perPage: ordersFilter.hasActiveFilters ? perPage : 10,
                );
                await res.when(
                  success: (res) async {
                    emit(
                      state.copyWith(
                        ordersFilter: ordersFilter,
                        orders: res?.orders ?? [],
                        meta: res?.meta?.copyWith(currentPage: 1),
                        isSearching: false,
                      ),
                    );
                  },
                  failure: (apiErrorModel) async {
                    emitFailure(apiErrorModel: apiErrorModel, emit: emit);
                    emit(
                      state.copyWith(
                        ordersFilter: ordersFilter,
                        orders: state.orders ?? [],
                        meta: state.meta?.copyWith(currentPage: 1),
                        isSearching: false,
                      ),
                    );
                  },
                );
              } catch (e) {
                emitFailure(
                  apiErrorModel: ErrorInfo(message: e.toString()),
                  emit: emit,
                );
              }
            },
          );
        },
        updateOrderLink:
            (orderId, orderItemId, unitId, documentationLink) async {
              await state.mapOrNull(
                loaded: (state) async {
                  try {
                    List<OrderEntity>? updatedOrders = state.orders?.map((
                      order,
                    ) {
                      if (order.id == orderId) {
                        return order.copyWith(
                          sallaOrderItems: order.sallaOrderItems?.map((item) {
                            final updatedUnits = item.units?.map((unit) {
                              if (unit.id.toString() == unitId) {
                                return unit.copyWith(
                                  documentationLink: documentationLink,
                                );
                              }
                              return unit;
                            }).toList();
                            return item.copyWith(units: updatedUnits);
                          }).toList(),
                        );
                      }
                      return order;
                    }).toList();
                    emit(state.copyWith(orders: updatedOrders));
                  } catch (e) {
                    emitFailure(
                      apiErrorModel: ErrorInfo(message: e.toString()),
                      emit: emit,
                    );
                  }
                },
              );
            },
        toggleUnit: (orderId, orderItemId, unitId, isSelected) async {
          await state.mapOrNull(
            loaded: (state) async {
              try {
                List<OrderEntity>? updatedOrders = state.orders?.map((order) {
                  if (order.id == orderId) {
                    return order.copyWith(
                      sallaOrderItems: order.sallaOrderItems?.map((item) {
                        final updatedUnits = item.units?.map((unit) {
                          if (unit.id.toString() == unitId) {
                            return unit.copyWith(isSelected: isSelected);
                          }
                          return unit;
                        }).toList();
                        return item.copyWith(units: updatedUnits);
                      }).toList(),
                    );
                  }
                  return order;
                }).toList();
                emit(
                  state.copyWith(
                    orders: updatedOrders,
                    selectedCount: sumSelectedCount(orders: updatedOrders),
                  ),
                );
              } catch (e) {
                emitFailure(
                  apiErrorModel: ErrorInfo(message: e.toString()),
                  emit: emit,
                );
              }
            },
          );
        },
        updateUnit: (orderId, orderItemId, unitId) async {
          await state.mapOrNull(
            loaded: (state) async {
              try {
                List<OrderEntity>? updatedOrders = state.orders?.map((order) {
                  if (order.id == orderId) {
                    return order.copyWith(
                      sallaOrderItems: order.sallaOrderItems?.map((item) {
                        final updatedUnits = item.units?.map((unit) {
                          if (unit.id.toString() == unitId) {
                            return unit.copyWith(isGeneratedPdf: true);
                          }
                          return unit;
                        }).toList();
                        return item.copyWith(units: updatedUnits);
                      }).toList(),
                    );
                  }
                  return order;
                }).toList();
                emit(
                  state.copyWith(
                    orders: updatedOrders,
                    selectedCount: sumSelectedCount(orders: updatedOrders),
                  ),
                );
              } catch (e) {
                emitFailure(
                  apiErrorModel: ErrorInfo(message: e.toString()),
                  emit: emit,
                );
              }
            },
          );
        },
        toggleSelectAll: (v) {
          state.mapOrNull(
            loaded: (state) async {
              final updatedOrders = state.orders?.map((order) {
                return order.copyWith(
                  sallaOrderItems: order.sallaOrderItems?.map((item) {
                    return item.copyWith(
                      units: item.units?.map((unit) {
                        return unit.copyWith(isSelected: v);
                      }).toList(),
                    );
                  }).toList(),
                );
              }).toList();
              emit(
                state.copyWith(
                  orders: updatedOrders,
                  selectAll: v,
                  selectedCount: sumSelectedCount(orders: updatedOrders),
                ),
              );
            },
          );
        },
      );
    });
  }
  int sumSelectedCount({required List<OrderEntity>? orders}) {
    int totalSelectedUnits = 0;
    for (var order in orders ?? []) {
      for (var item in order.sallaOrderItems ?? <SallaOrderItemEntity>[]) {
        for (var unit in item.units ?? <UnitEntity>[]) {
          if (unit.isSelected) totalSelectedUnits++;
        }
      }
    }
    return totalSelectedUnits;
  }

  void emitLoaded({
    required Emitter<OrdersState> emit,
    required _Loaded loaded,
    List<OrderEntity>? orders,
    MetaEntity? meta,
    bool? isSearching,
  }) {
    return emit(
      OrdersState.loaded(
        orders: orders ?? loaded.orders,
        meta: meta ?? loaded.meta,
        isSearching: isSearching ?? loaded.isSearching,
      ),
    );
  }

  void emitFailure({
    required Emitter<OrdersState> emit,
    required ErrorInfo apiErrorModel,
  }) {
    return emit(OrdersState.failure(apiErrorModel: apiErrorModel));
  }
}
