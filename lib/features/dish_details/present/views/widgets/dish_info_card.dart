import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DishInfoCard extends StatelessWidget {
  const DishInfoCard({super.key, required this.baseKiloPrice});

  final double baseKiloPrice;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.04),
            blurRadius: 20,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'سمك بوري بلدي فاخر',
                      style: textTheme.headlineMedium?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(Icons.water_drop, color: colorScheme.secondary, size: 14.sp),
                        SizedBox(width: 4.w),
                        Text(
                          'طازج يومياً - سمك بلدي دسم وممتاز',
                          style: textTheme.bodySmall?.copyWith(color: colorScheme.secondary, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${baseKiloPrice.toInt()}',
                        style: textTheme.headlineMedium?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 2.w),
                      Text('ج.م', style: textTheme.bodySmall?.copyWith(color: colorScheme.onSurfaceVariant, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Text('لكل 1 كجم نيء', style: textTheme.labelSmall?.copyWith(color: colorScheme.outline)),
                ],
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Text(
              'سمك بوري طازج يومياً من مزارعنا وشواطئنا، غني بالأوميجا 3، يُنظف بعناية فائقة ويُتبل بخلطة الزفر السكندرية الخاصة، ويُحضر جاهزاً للأكل حسب رغبتك.',
              style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant, height: 1.5),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Expanded(
                child: _buildNutrientChip(context, Icons.health_and_safety, 'أوميجا 3', 'عالي النقاء', colorScheme.secondary),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _buildNutrientChip(context, Icons.timer, 'وقت الطهي', '25-35 دقيقة', colorScheme.primary),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _buildNutrientChip(context, Icons.local_fire_department, 'طاقة صحية', 'بروتين بحري', colorScheme.tertiaryContainer),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNutrientChip(BuildContext context, IconData icon, String label, String value, Color iconColor) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor, size: 18.sp),
          SizedBox(width: 6.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: textTheme.labelSmall?.copyWith(fontSize: 10.sp, color: colorScheme.outline)),
              Text(value, style: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.onSurface)),
            ],
          ),
        ],
      ),
    );
  }
}
