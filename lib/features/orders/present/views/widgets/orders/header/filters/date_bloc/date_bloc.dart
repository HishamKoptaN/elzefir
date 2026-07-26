import '../../../../../../../../../core/errors/models/error_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

import '../date/time_widget.dart';
part 'date_bloc.freezed.dart';
part 'date_event.dart';
part 'date_state.dart';

@singleton
class DateBloc extends Bloc<DateEvent, DateState> {
  DateBloc() : super(DateState.loaded(fromDate: null)) {
    on<DateEvent>((event, emit) async {
      sequential();
      await event.when(
        dateRangeChanged: (fromDate, toDate, resyncFromDate) async {
          await state.mapOrNull(
            loaded: (state) async {
              emit(
                state.copyWith(
                  fromDate: fromDate,
                  toDate: toDate,
                  resyncFromDate: resyncFromDate,
                ),
              );
            },
          );
        },
      );
    });
  }
}
