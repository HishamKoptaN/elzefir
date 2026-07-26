part of 'filters_bloc.dart';

@freezed
abstract class FiltersEvent with _$FiltersEvent {
  const factory FiltersEvent.get() = _Get;
}
