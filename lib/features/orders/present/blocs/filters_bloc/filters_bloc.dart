import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/errors/models/error_info.dart';
import '../../../data/datasources/orders_api.dart';
import '../../../data/models/filter_model.dart';
import '../../../domain/usecases/orders_use_cases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'filters_bloc.freezed.dart';
part 'filters_event.dart';
part 'filters_state.dart';

@singleton
class FiltersBloc extends Bloc<FiltersEvent, FiltersState> {
  final OrdersUseCases ordersUseCases;
  FiltersBloc(this.ordersUseCases) : super(FiltersState.loaded()) {
    on<FiltersEvent>((event, emit) async {
      await event.when(
        get: () async {
          await state.mapOrNull(
            loaded: (state) async {
              await state.mapOrNull(
                loaded: (state) async {
                  final res = await getIt<OrdersApi>().getFilters();
                  emit(state.copyWith(filters: res));
                },
              );
            },
          );
        },
      );
    });
  }

  void emitFailure({
    required Emitter<FiltersState> emit,
    required ErrorInfo apiErrorModel,
  }) {
    return emit(FiltersState.failure(apiErrorModel: apiErrorModel));
  }
}
