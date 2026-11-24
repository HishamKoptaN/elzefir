part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.get() = _Get;
  const factory ProductsEvent.getPage() = _GetPage;
  const factory ProductsEvent.loadMore({required String cursor}) = _LoadMore;
}
