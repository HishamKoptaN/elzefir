import 'package:alzefr/core/widgets/custom_image.dart';
import 'package:alzefr/features/products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/extensions/responsive_icon_extension .dart';

class ProductCard extends StatefulWidget {
  final ProductEntity product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int quantity = 1;
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final Color accentPeach = const Color(0xFFFBECE6);
    return Container(
      width: 352,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFC3C7CE).withOpacity(0.1)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xFFFFF1EA),
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(16),
                    bottom: Radius.zero,
                  ),
                  child: Container(
                    height: 224,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: CustomImage(
                      image: widget.product.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Container(
                      width: 32.67,
                      height: 37.29,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.05),
                            offset: Offset(0, 1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 14.iconRes,
                          color: isFavorite ? Colors.red : Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: accentColorCalc(accentPeach),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        widget.product.category.name,
                        style: TextStyle(
                          color: Color(0xFFC88A67),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      widget.product.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF28180D),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.product.description,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFF42474D),
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.only(top: 16),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Color.fromRGBO(195, 199, 206, 0.2),
                        width: 1,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 42,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFEADE),
                              borderRadius: BorderRadius.circular(9999),
                              border: Border.all(
                                color: const Color(0xFFC3C7CE).withOpacity(0.2),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      quantity++;
                                    });
                                  },
                                  borderRadius: BorderRadius.circular(9999),
                                  child: const SizedBox(
                                    width: 32,
                                    height: 32,
                                    child: Icon(
                                      Icons.add,
                                      size: 12,
                                      color: Color(0xFF001629),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(
                                    '$quantity',
                                    style: const TextStyle(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF28180D),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    if (quantity > 1) {
                                      setState(() {
                                        quantity--;
                                      });
                                    }
                                  },
                                  borderRadius: BorderRadius.circular(9999),
                                  child: const SizedBox(
                                    width: 32,
                                    height: 32,
                                    child: Icon(
                                      Icons.remove,
                                      size: 12,
                                      color: Color(0xFF001629),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                widget.product.price,
                                style: const TextStyle(
                                  fontFamily: 'Libre Caslon Text',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF001629),
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                'ج.م',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF42474D),
                                  letterSpacing: 0.6,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF001629),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9999),
                            ),
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.shopping_cart_outlined,
                                size: 20,
                                color: Colors.white,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'أضف للسلة',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color accentColorCalc(Color baseColor) {
    return const Color(0xFFF7E2D5);
  }
}
