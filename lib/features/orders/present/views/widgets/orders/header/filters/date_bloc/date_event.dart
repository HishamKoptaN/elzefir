part of 'date_bloc.dart';

@freezed
abstract class DateEvent with _$DateEvent {
  const factory DateEvent.dateRangeChanged({
    DateTime? fromDate,
    DateTime? toDate,
    DateTime? resyncFromDate,
  }) = _DateRangeChanged;
}
