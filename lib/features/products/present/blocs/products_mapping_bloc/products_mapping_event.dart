part of 'products_mapping_bloc.dart';

@freezed
abstract class ProductsMappingEvent with _$ProductsMappingEvent {
  const factory ProductsMappingEvent.get() = _Get;
}
