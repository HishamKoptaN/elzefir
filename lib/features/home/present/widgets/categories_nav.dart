import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../categories/domain/entities/categories_res_entity.dart';

class CategoriesNav extends StatelessWidget {
  const CategoriesNav({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onChanged,
  });

  final List<CategoryEntity> categories;
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  static const Color primary = Color(0xFF001629);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: const Color(0xFFC3C7CE).withOpacity(.1)),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 700;

          if (isMobile) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: _buildItems(),
              ),
            );
          }

          return Center(
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 16.w,
              runSpacing: 12.h,
              children: _buildItems(),
            ),
          );
        },
      ),
    );
  }

  List<Widget> _buildItems() {
    return List.generate(categories.length, (index) {
      final selected = index == selectedIndex;

      return InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () => onChanged(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOut,
          padding: const EdgeInsets.only(bottom: 6),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: selected ? primary : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 220),
            style: TextStyle(
              color: selected ? primary : const Color(0xFF42474D),
              fontSize: 14,
              fontWeight: selected ? FontWeight.w700 : FontWeight.w600,
              letterSpacing: .5,
            ),
            child: Text(categories[index].name),
          ),
        ),
      );
    });
  }
}
