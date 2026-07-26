part of 'filters_bloc.dart';

@freezed
abstract class FiltersState with _$FiltersState {
  const factory FiltersState.initial() = _Initial;
  const factory FiltersState.loading() = _Loading;
  const factory FiltersState.success() = _Success;
  const factory FiltersState.loaded({List<FilterModel>? filters}) = _Loaded;
  const factory FiltersState.failure({required ErrorInfo apiErrorModel}) =
      _Failure;
}
