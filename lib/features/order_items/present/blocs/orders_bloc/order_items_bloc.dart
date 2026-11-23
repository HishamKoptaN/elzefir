import 'package:formz/formz.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/errors/models/error_info.dart';
import '../../../../orders/present/blocs/orders_bloc/orders_bloc.dart';
import '../../../data/datasources/order_items_api.dart';
import '../../../domain/entities/update_unit_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
part 'order_items_bloc.freezed.dart';
part 'order_items_event.dart';
part 'order_items_state.dart';

@singleton
class OrderItemsBloc extends Bloc<OrderItemsEvent, OrderItemsState> {
  OrderItemsBloc()
    : super(OrderItemsState.loaded(updateUnit: UpdateUnitEntity())) {
    on<OrderItemsEvent>((event, emit) async {
      droppable();
      await event.when(
        dataChanged: (updateUnit) {
          state.mapOrNull(
            loaded: (state) {
              final link = updateUnit.documentationLink;
              FormzSubmissionStatus status = FormzSubmissionStatus.success;
              if (link != null && link.value.trim().isNotEmpty) {
                status = link.isValid
                    ? FormzSubmissionStatus.success
                    : FormzSubmissionStatus.failure;
              }
              emit(
                state.copyWith(
                  updateUnit: updateUnit.copyWith(
                    formzSubmissionStatus: status,
                  ),
                ),
              );
            },
          );
        },
        updateItem: () async {
          await state.mapOrNull(
            loaded: (state) async {
              try {
                emit(state.copyWith(isLoading: true));
                await getIt<OrderItemsApi>().update(
                  id: state.updateUnit?.unitId ?? 0,
                  body: {
                    "documentation_link":
                        state.updateUnit?.documentationLink?.value,
                  },
                );
                emit(const OrderItemsState.success());
                emitLoaded(emit: emit, loaded: state, isLoading: false);
                getIt<OrdersBloc>().add(
                  OrdersEvent.updateOrderLink(
                    orderId: state.updateUnit?.orderId?.toString() ?? '',
                    orderItemId:
                        state.updateUnit?.orderItemId?.toString() ?? '',
                    unitId: state.updateUnit?.unitId?.toString() ?? '',
                    documentationLink:
                        state.updateUnit?.documentationLink?.value ?? '',
                  ),
                );
              } catch (object) {
                emitFailure(
                  apiErrorModel: ErrorInfo(
                    title: 'خطأ',
                    message: object.toString(),
                  ),
                  emit: emit,
                );
                emitLoaded(emit: emit, loaded: state, isLoading: false);
              }
            },
          );
        },
      );
    });
  }

  void emitLoaded({
    required Emitter<OrderItemsState> emit,
    required _Loaded loaded,
    bool? isLoading,
  }) {
    return emit(
      OrderItemsState.loaded(isLoading: isLoading ?? loaded.isLoading),
    );
  }

  void emitFailure({
    required Emitter<OrderItemsState> emit,
    required ErrorInfo apiErrorModel,
  }) {
    return emit(OrderItemsState.failure(apiErrorModel: apiErrorModel));
  }
}
