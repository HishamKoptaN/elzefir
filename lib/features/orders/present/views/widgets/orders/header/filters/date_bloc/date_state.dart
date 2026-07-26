part of 'date_bloc.dart';

@freezed
abstract class DateState with _$DateState {
  const factory DateState.initial() = _Initial;
  const factory DateState.loading() = _Loading;
  const factory DateState.success() = _Success;
  factory DateState.loaded({
    DateTime? fromDate,
    DateTime? toDate,
    @Default(TimePeriod.am) TimePeriod? fromTimePeriod,
    @Default(TimePeriod.pm) TimePeriod? toTimePeriod,
    DateTime? resyncFromDate,
  }) = _Loaded;
  const factory DateState.orderShare() = _OrderShare;
  const factory DateState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
