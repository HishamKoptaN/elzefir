import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../../../../products/domain/entities/product_entity.dart';
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
      width: 800.w,
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        borderRadius: .circular(12.r),
        border: Border.all(
          color: context.colorScheme.outlineVariant.withValues(alpha: 0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.shadow.withValues(alpha: 0.05),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            padding: .all(16.w),
            decoration: BoxDecoration(
              color: context.colorScheme.surfaceContainerLowest,
              borderRadius: .vertical(top: .circular(12.r)),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: .vertical(top: .circular(16.r), bottom: .zero),
                  child: Container(
                    height: 224.h,
                    width: .infinity,
                    color: context.colorScheme.outlineVariant,
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
            padding: .all(24.w),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      widget.addition.name,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: context.colorScheme.onSurface,
                      ),
                      textAlign: .right,
                    ),
                    CategoryBadgeWidget(name: 'اضافات'),
                  ],
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  width: .infinity,
                  child: Text(
                    widget.addition.description,
                    style: TextStyle(
                      fontSize: 16.sp,
                      height: 1.5,
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                    textAlign: .right,
                    maxLines: 2,
                    overflow: .ellipsis,
                  ),
                ),
                PriceWidget(price: widget.addition.price),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
