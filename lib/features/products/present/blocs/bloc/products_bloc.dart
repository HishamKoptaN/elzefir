import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/models/error_info.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../data/model/product_model.dart';
import '../../../domain/use_cases/products_use_cases.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

@singleton
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc({required this.productsUseCases})
    : super(const ProductsState.initial()) {
    on<ProductsEvent>((event, emit) async {
      await event.when(
        get: () async {
          emit(const ProductsState.loading());
          final result = await productsUseCases.get();
          await result.when(
            success: (res) async {
              emit(ProductsState.loaded(products: res ?? []));
            },
            failure: (e) async => emit(ProductsState.failure(apiErrorModel: e)),
          );
        },
        getPage: () async {
          _loadMoreFailed = false;
          emit(const ProductsState.loading());
          final result = await productsUseCases.getPage();
          await result.when(
            success: (page) async {
              _cursor = page?.cursor;
              _hasMore = page?.hasMore ?? false;
              emit(
                ProductsState.loaded(
                  products: page?.products ?? [],
                  hasMore: _hasMore,
                ),
              );
            },
            failure: (e) async => emit(ProductsState.failure(apiErrorModel: e)),
          );
        },
        loadMore: (cursor) async {
          if (!_hasMore || _isLoadingMore) {
            return;
          }
          final current = state.maybeMap(
            loaded: (loaded) => loaded.products ?? <ProductModel>[],
            orElse: () => <ProductModel>[],
          );
          _loadMoreFailed = false;
          _isLoadingMore = true;
          emit(
            ProductsState.loaded(
              products: current,
              hasMore: _hasMore,
              isLoadingMore: true,
            ),
          );
          final result = await productsUseCases.loadMore(cursor: cursor);
          _isLoadingMore = false;
          await result.when(
            success: (page) async {
              _cursor = page?.cursor ?? _cursor;
              _hasMore = page?.hasMore ?? false;
              emit(
                ProductsState.loaded(
                  products: [...current, ...(page?.products ?? [])],
                  hasMore: _hasMore,
                ),
              );
            },
            failure: (e) async {
              _loadMoreFailed = true;
              emit(
                ProductsState.loaded(
                  products: current,
                  hasMore: _hasMore,
                  loadMoreFailed: true,
                ),
              );
            },
          );
        },
      );
    });
  }

  final ProductsUseCase productsUseCases;
  String? _cursor;
  bool _hasMore = false;
  bool _isLoadingMore = false;
  bool _loadMoreFailed = false;

  String? get cursor => _cursor;
  bool get hasMore => _hasMore;
  bool get isLoadingMore => _isLoadingMore;
  bool get loadMoreFailed => _loadMoreFailed;
}
