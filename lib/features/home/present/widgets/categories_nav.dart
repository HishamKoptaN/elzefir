import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/extensions/theme_ext.dart';
import '../../../categories/domain/entities/categories_res_entity.dart';

class CategoriesNav extends StatelessWidget {
  const CategoriesNav({
    super.key,
    required this.categories,
    required this.selectedCategoryId,
    required this.onChanged,
  });

  final List<CategoryEntity> categories;
  final int? selectedCategoryId;
  final ValueChanged<int?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: const Color(0xFFC3C7CE).withValues(alpha: .1),
          ),
        ),
      ),
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 16.w,
          runSpacing: 12.h,
          children: [
            CategoryItemWidget(
              title: 'الكل',
              selected: selectedCategoryId == null,
              onTap: () {
                onChanged(null);
              },
            ),
            ...categories.map((category) {
              return CategoryItemWidget(
                title: category.name,
                selected: selectedCategoryId == category.id,
                onTap: () {
                  onChanged(category.id);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOut,
        padding: const EdgeInsets.only(bottom: 6),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: selected
                  ? context.colorScheme.primary
                  : Colors.transparent,
              width: 4.h,
            ),
          ),
        ),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 350),
          style: TextStyle(
            color: selected
                ? context.colorScheme.primary
                : context.colorScheme.primary.withValues(alpha: 0.8),
            fontSize: 24.sp,
            fontWeight: selected ? FontWeight.bold : FontWeight.w600,
            letterSpacing: 2.5.w,
          ),
          child: Text(title),
        ),
      ),
    );
  }
}
