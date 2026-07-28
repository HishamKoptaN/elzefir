import 'package:alzefr/core/widgets/custom_image.dart';
import 'package:alzefr/features/products/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../products/category_badge_widget.dart';
import '../products/product_card.dart';

class AdditionCard extends StatefulWidget {
  final AdditionEntity addition;
  const AdditionCard({super.key, required this.addition});

  @override
  State<AdditionCard> createState() => _AdditionCardState();
}

class _AdditionCardState extends State<AdditionCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 466.w,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFFC3C7CE).withValues(alpha: 0.1),
        ),
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
                    height: 224.h,
                    width: double.infinity,
                    color: Colors.grey.shade300,
                    child: CustomImage(
                      image: widget.addition.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.addition.name,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF28180D),
                      ),
                      textAlign: TextAlign.right,
                    ),
                    CategoryBadgeWidget(name: 'اضافات'),
                  ],
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    widget.addition.description,
                    style: TextStyle(
                      fontSize: 16.sp,
                      height: 1.5,
                      color: const Color(0xFF42474D),
                    ),
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 16.h),
                PriceWidget(price: widget.addition.price),
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
