import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../../products/data/mapper/products_mapper.dart';
import '../../../../products/domain/entities/product_entity.dart';
import '../../../../products/present/blocs/bloc/products_bloc.dart';
import 'landing_marquee_track.dart';

/// شريط أسماء المنتجات المتحرك، ومصدر بياناته منتجات فايرستور.
class LandingMarqueeSection extends StatelessWidget {
  const LandingMarqueeSection({super.key});

  static const _maxItems = 7;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      bloc: getIt<ProductsBloc>(),
      builder: (context, state) {
        final names = _namesFrom(state);
        if (names.isEmpty) return const SizedBox.shrink();
        return LandingMarqueeTrack(names: names);
      },
    );
  }

  List<String> _namesFrom(ProductsState state) {
    final products = state.maybeMap(
      loaded: (s) => s.products?.map((e) => e.toEntity()).toList() ?? [],
      orElse: () => <ProductEntity>[],
    );
    final withNames = products.where((p) => p.name.trim().isNotEmpty).toList();
    final featured = withNames.where((p) => p.isFeatured).toList();
    final others = withNames.where((p) => !p.isFeatured).toList();
    return [
      ...featured,
      ...others,
    ].take(_maxItems).map((p) => p.name.trim()).toList();
  }
}
