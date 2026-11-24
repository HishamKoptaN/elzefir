import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../products/present/blocs/bloc/products_bloc.dart';

/// يحمّل الصفحة التالية تلقائياً عند اقتراب نهاية قائمة المنتجات من الشاشة.
class ProductsAutoLoader extends StatelessWidget {
  const ProductsAutoLoader({
    super.key,
    required this.listKey,
    required this.child,
  });

  final GlobalKey listKey;
  final Widget child;

  static const _triggerDistance = 200.0;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification) {
          _loadIfNeeded(context);
        }
        return false;
      },
      child: child,
    );
  }

  void _loadIfNeeded(BuildContext context) {
    final bloc = getIt<ProductsBloc>();
    if (!bloc.hasMore || bloc.isLoadingMore || bloc.cursor == null) {
      return;
    }
    final renderObject = listKey.currentContext?.findRenderObject();
    if (renderObject is! RenderBox || !renderObject.hasSize) {
      return;
    }
    final bottom = renderObject
        .localToGlobal(Offset(0, renderObject.size.height))
        .dy;
    if (bottom > MediaQuery.sizeOf(context).height + _triggerDistance) {
      return;
    }
    bloc.add(ProductsEvent.loadMore(cursor: bloc.cursor!));
  }
}
