import 'product_model.dart';

class ProductsPage {
  const ProductsPage({
    required this.products,
    required this.cursor,
    required this.hasMore,
  });

  final List<ProductModel> products;
  final String? cursor;
  final bool hasMore;
}
