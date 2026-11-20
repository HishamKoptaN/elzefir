import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../products/domain/entities/product_entity.dart';

class DishDetailsView extends StatefulWidget {
  const DishDetailsView({super.key, this.product});

  static const String routeName = 'dish-details';

  /// المنتج اللي اتفتح من الكارت؛ بيفضل null لو الصفحة اتفتحت لوحدها.
  final ProductEntity? product;

  @override
  State<DishDetailsView> createState() => _DishDetailsViewState();
}

class _DishDetailsViewState extends State<DishDetailsView> {
  static const double _demoUnitPrice = 180.0;

  // السعر والوحدة من بيانات المنتج؛ الكيلو هو الافتراضي للمنتجات القديمة.
  late final String _priceUnit = widget.product?.priceUnitLabel ?? 'كجم';
  late final double baseUnitPrice = widget.product == null
      ? _demoUnitPrice
      : (widget.product!.priceValue ?? 0);
  bool get _sellsByWeight =>
      _priceUnit.contains('كجم') ||
      _priceUnit.contains('كيلو') ||
      _priceUnit.contains('جرام');

  double currentWeight = 1.0;
  double cookingMethodFee = 15.0; // default singari
  double addonsFee = 0.0;
  
  String selectedCookingMethod = 'singari';
  String selectedDoneness = 'standard';
  String selectedSpicy = 'medium';
  
  final Map<String, bool> selectedAddons = {
    'rice': false,
    'tahini': false,
    'salad': false,
    'bread': false,
  };

  double get total =>
      (_sellsByWeight ? baseUnitPrice * currentWeight : baseUnitPrice) +
      cookingMethodFee +
      addonsFee;

  String get _priceLabel => baseUnitPrice % 1 == 0
      ? baseUnitPrice.toStringAsFixed(0)
      : baseUnitPrice.toStringAsFixed(2);

  String get _priceUnitNote =>
      _sellsByWeight ? 'لكل 1 كجم نيء' : 'لكل $_priceUnit';

  String get _productTitle {
    final product = widget.product;
    if (product == null) return 'سمك بوري بلدي فاخر';
    if (product.name.isNotEmpty) return product.name;
    return product.title.isNotEmpty ? product.title : 'منتج';
  }

  String get _productDescription {
    final description = widget.product?.description ?? '';
    return description.isNotEmpty ? description : _fallbackDescription;
  }

  static const String _fallbackDescription =
      'سمك بوري طازج يومياً من مزارعنا وشواطئنا، غني بالأوميجا 3، يُنظف بعناية فائقة ويُتبل بخلطة الزفر السكندرية الخاصة، ويُحضر جاهزاً للأكل حسب رغبتك.';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              // App Bar / Hero Image
              SliverAppBar(
                expandedHeight: 280.h,
                pinned: true,
                backgroundColor: colorScheme.surface,
                elevation: 0,
                leading: IconButton(
                  icon: Container(
                    padding: EdgeInsets.all(8.r),
                    decoration: BoxDecoration(
                      color: colorScheme.surfaceContainerHighest.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_forward, color: colorScheme.primary, size: 20.sp),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                actions: [
                  IconButton(
                    icon: Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                        color: colorScheme.surfaceContainerHighest.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.favorite_border, color: colorScheme.onSurfaceVariant, size: 20.sp),
                    ),
                    onPressed: () {},
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        'https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?auto=format&fit=crop&w=800&q=80',
                        fit: BoxFit.cover,
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              colorScheme.primary.withOpacity(0.6),
                              Colors.transparent,
                              colorScheme.primary.withOpacity(0.8),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16.h,
                        left: 16.w,
                        right: 16.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                              decoration: BoxDecoration(
                                color: colorScheme.secondary,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.verified, color: colorScheme.onSecondary, size: 14.sp),
                                  SizedBox(width: 4.w),
                                  Text(
                                    'صيد اليوم طازج',
                                    style: textTheme.labelSmall?.copyWith(color: colorScheme.onSecondary, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                              decoration: BoxDecoration(
                                color: colorScheme.surfaceContainerLowest.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.star, color: colorScheme.tertiaryContainer, size: 16.sp),
                                  SizedBox(width: 4.w),
                                  Text('4.9', style: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                                  SizedBox(width: 2.w),
                                  Text('(120+ تقييم)', style: textTheme.labelSmall?.copyWith(fontSize: 10.sp, color: colorScheme.onSurfaceVariant)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Content Body
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title & Price Header Card
                      Container(
                        padding: EdgeInsets.all(16.r),
                        decoration: BoxDecoration(
                          color: colorScheme.surfaceContainerLowest,
                          borderRadius: BorderRadius.circular(16.r),
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme.shadow.withOpacity(0.04),
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
                                        _productTitle,
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
                                          _priceLabel,
                                          style: textTheme.headlineMedium?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(width: 2.w),
                                        Text('ج.م', style: textTheme.bodySmall?.copyWith(color: colorScheme.onSurfaceVariant, fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Text(_priceUnitNote, style: textTheme.labelSmall?.copyWith(color: colorScheme.outline)),
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
                                _productDescription,
                                style: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant, height: 1.5),
                              ),
                            ),
                            SizedBox(height: 16.h),
                            // Nutrients bar
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
                      ),

                      SizedBox(height: 16.h),

                      // Section 1: Cooking Method
                      _buildSectionContainer(
                        context,
                        title: 'طريقة الطهي والتجهيز',
                        badge: 'إلزامي (اختر 1)',
                        badgeColor: colorScheme.secondary,
                        child: Column(
                          children: [
                            _buildMethodTile(
                              context,
                              value: 'singari',
                              groupValue: selectedCookingMethod,
                              title: 'سنجاري إسكندراني بالفرن',
                              badge: 'الأكثر طلباً 🔥',
                              priceText: '+15 ج.م',
                              cost: 15.0,
                              desc: 'مفتوح سنجاري متبل بالبصل والفلفل والطماطم مع الثوم وزيت الزيتون والليمون في الفرن.',
                            ),
                            SizedBox(height: 8.h),
                            _buildMethodTile(
                              context,
                              value: 'grilled_radda',
                              groupValue: selectedCookingMethod,
                              title: 'مشوي بالردة على الصاج',
                              priceText: 'مجاناً',
                              cost: 0.0,
                              desc: 'التسوية السكندرية الفلاحية الأصلية برائحة الشواء مع دقة الخل والليمون والكمون الحارة.',
                            ),
                            SizedBox(height: 8.h),
                            _buildMethodTile(
                              context,
                              value: 'crispy_fried',
                              groupValue: selectedCookingMethod,
                              title: 'مقلي مقرمش بخلطة الزفر',
                              priceText: '+10 ج.م',
                              cost: 10.0,
                              desc: 'متبل بتتبيلة الكمون والكسبرة مع طبقة قرمشة ذهبية خفيفة من برة وطري جداً من جوة.',
                            ),
                            SizedBox(height: 8.h),
                            _buildMethodTile(
                              context,
                              value: 'oil_lemon',
                              groupValue: selectedCookingMethod,
                              title: 'زيت وليمون خفيف بالفرن',
                              priceText: '+10 ج.م',
                              cost: 10.0,
                              desc: 'خيار صحي دايت مع شرائح الليمون الأصفر، الكرفس الطازج ورشة زيت زيتون بكر.',
                            ),
                          ],
                        ),
                      ),

                      if (_sellsByWeight) ...[
                      SizedBox(height: 16.h),

                      // Section 2: Weight & Portion
                      _buildSectionContainer(
                        context,
                        title: 'الوزن والكمية المقدرة',
                        badge: 'حجم الحصة',
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(child: _buildWeightPresetButton(context, 1.0, '1 كجم', '2-3 سمكات')),
                                SizedBox(width: 8.w),
                                Expanded(child: _buildWeightPresetButton(context, 1.5, '1.5 كجم', '3-4 سمكات')),
                                SizedBox(width: 8.w),
                                Expanded(child: _buildWeightPresetButton(context, 2.0, '2 كجم', '4-5 سمكات')),
                                SizedBox(width: 8.w),
                                Expanded(child: _buildWeightPresetButton(context, 2.5, '2.5 كجم', 'وليمة عائلية')),
                              ],
                            ),
                            SizedBox(height: 12.h),
                            Container(
                              padding: EdgeInsets.all(12.r),
                              decoration: BoxDecoration(
                                color: colorScheme.surfaceContainerLow,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('الوزن الصافي المختار', style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                                      Text('الوزن التقريبي قبل التنظيف', style: textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          if (currentWeight > 0.5) {
                                            setState(() {
                                              currentWeight = (currentWeight - 0.5);
                                            });
                                          }
                                        },
                                        icon: Container(
                                          padding: EdgeInsets.all(6.r),
                                          decoration: BoxDecoration(
                                            color: colorScheme.surfaceContainerHighest,
                                            borderRadius: BorderRadius.circular(8.r),
                                          ),
                                          child: Icon(Icons.remove, size: 16.sp, color: colorScheme.primary),
                                        ),
                                      ),
                                      SizedBox(width: 8.w),
                                      Text(
                                        currentWeight.toStringAsFixed(1),
                                        style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary),
                                      ),
                                      SizedBox(width: 4.w),
                                      Text('كجم', style: textTheme.bodySmall?.copyWith(color: colorScheme.onSurfaceVariant)),
                                      SizedBox(width: 8.w),
                                      IconButton(
                                        onPressed: () {
                                          if (currentWeight < 10.0) {
                                            setState(() {
                                              currentWeight = (currentWeight + 0.5);
                                            });
                                          }
                                        },
                                        icon: Container(
                                          padding: EdgeInsets.all(6.r),
                                          decoration: BoxDecoration(
                                            color: colorScheme.primary,
                                            borderRadius: BorderRadius.circular(8.r),
                                          ),
                                          child: Icon(Icons.add, size: 16.sp, color: colorScheme.onPrimary),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ],

                      SizedBox(height: 16.h),

                      // Section 3: Doneness & Spice
                      _buildSectionContainer(
                        context,
                        title: 'درجة التسوية والشطة',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('درجة تسوية السمك', style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Expanded(
                                  child: _buildDonenessOption(
                                    context,
                                    value: 'standard',
                                    groupValue: selectedDoneness,
                                    title: 'تسوية مظبوطة طرية',
                                    subtitle: 'لحم ناعم ودايب',
                                    onTap: () => setState(() => selectedDoneness = 'standard'),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Expanded(
                                  child: _buildDonenessOption(
                                    context,
                                    value: 'well_done',
                                    groupValue: selectedDoneness,
                                    title: 'تسوية كاملة ومحمرة',
                                    subtitle: 'حروف مقرمشة خفيفة',
                                    onTap: () => setState(() => selectedDoneness = 'well_done'),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Text('مستوى الشطة والدقة', style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                            SizedBox(height: 8.h),
                            Row(
                              children: [
                                Expanded(child: _buildSpiceOption(context, 'none', 'بدون شطة', 'بارد تماماً')),
                                SizedBox(width: 8.w),
                                Expanded(child: _buildSpiceOption(context, 'medium', 'شطة خفيفة 🌶️', 'تحبيشة متوازنة')),
                                SizedBox(width: 8.w),
                                Expanded(child: _buildSpiceOption(context, 'hot', 'حار سكندري 🌶️🌶️', 'حامي ومولع')),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16.h),

                      // Section 4: Add-ons
                      _buildSectionContainer(
                        context,
                        title: 'أطباق جانبية تكمّل الوجبة',
                        badge: 'اختياري',
                        child: Column(
                          children: [
                            _buildAddonCheckbox(context, 'rice', 'أرز صيادية بلدي بالبصل المكرمل', 'طبق فردي مشبع مع لمسة قرفة خفيفة', 25.0),
                            SizedBox(height: 8.h),
                            _buildAddonCheckbox(context, 'tahini', 'سلطة طحينة سمسم بيضاء', 'طحينة خام مع الكمون والخل والليمون', 15.0),
                            SizedBox(height: 8.h),
                            _buildAddonCheckbox(context, 'salad', 'سلطة خضراء بلدي بالدقة', 'طماطم، خيار، جرجير، كرفس مع ليمون', 15.0),
                            SizedBox(height: 8.h),
                            _buildAddonCheckbox(context, 'bread', 'رغيفين عيش بلدي سخن ردة', 'طازج من الفرن مباشرة مع الوجبة', 5.0),
                          ],
                        ),
                      ),

                      SizedBox(height: 16.h),

                      // Section 5: Chef Notes
                      _buildSectionContainer(
                        context,
                        title: 'ملاحظات خاصة لشيف المطبخ',
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('هل لديك أي رغبات إضافية في التتبيل، الملح، أو طريقة التغليف؟', style: textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant)),
                            SizedBox(height: 8.h),
                            TextField(
                              maxLines: 2,
                              decoration: InputDecoration(
                                hintText: 'مثال: ليمون زيادة، تقليل الملح، فصل الصوص عن السمك...',
                                hintStyle: TextStyle(color: colorScheme.outline, fontSize: 12.sp),
                                filled: true,
                                fillColor: colorScheme.surfaceContainer,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 100.h), // Bottom padding for FAB bar
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Bottom Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerLowest.withOpacity(0.95),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow.withOpacity(0.06),
                    blurRadius: 16,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('السعر الإجمالي', style: textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            total.toStringAsFixed(0),
                            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary),
                          ),
                          SizedBox(width: 4.w),
                          Text('ج.م', style: textTheme.bodySmall?.copyWith(color: colorScheme.secondary, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
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

  Widget _buildSectionContainer(BuildContext context, {required String title, String? badge, Color? badgeColor, required Widget child}) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withOpacity(0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 8.w,
                    height: 16.h,
                    decoration: BoxDecoration(
                      color: badgeColor ?? colorScheme.primary,
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text(title, style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                ],
              ),
              if (badge != null)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: badgeColor?.withOpacity(0.15) ?? colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    badge,
                    style: textTheme.labelSmall?.copyWith(fontSize: 10.sp, fontWeight: FontWeight.bold, color: badgeColor ?? colorScheme.primary),
                  ),
                ),
            ],
          ),
          SizedBox(height: 12.h),
          child,
        ],
      ),
    );
  }

  Widget _buildMethodTile(
    BuildContext context, {
    required String value,
    required String groupValue,
    required String title,
    String? badge,
    required String priceText,
    required double cost,
    required String desc,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isSelected = value == groupValue;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCookingMethod = value;
          cookingMethodFee = cost;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.surfaceContainerLow : colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isSelected ? colorScheme.primary.withOpacity(0.3) : Colors.transparent,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: (val) {
                if (val != null) {
                  setState(() {
                    selectedCookingMethod = val;
                    cookingMethodFee = cost;
                  });
                }
              },
            ),
            SizedBox(width: 8.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(title, style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                          if (badge != null) ...[
                            SizedBox(width: 6.w),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                              decoration: BoxDecoration(
                                color: colorScheme.tertiaryContainer.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Text(badge, style: textTheme.labelSmall?.copyWith(fontSize: 9.sp, color: colorScheme.tertiaryContainer)),
                            ),
                          ],
                        ],
                      ),
                      Text(priceText, style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.secondary)),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Text(desc, style: textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant, height: 1.4)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeightPresetButton(BuildContext context, double weight, String label, String sublabel) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isSelected = currentWeight == weight;

    return GestureDetector(
      onTap: () {
        setState(() {
          currentWeight = weight;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.primary : colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: isSelected ? colorScheme.onPrimary : colorScheme.onSurface,
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              sublabel,
              style: textTheme.labelSmall?.copyWith(
                fontSize: 9.sp,
                color: isSelected ? colorScheme.onPrimary.withOpacity(0.8) : colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDonenessOption(BuildContext context, {required String value, required String groupValue, required String title, required String subtitle, required VoidCallback onTap}) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isSelected = value == groupValue;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.surfaceContainerLow : colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: isSelected ? colorScheme.primary.withOpacity(0.3) : Colors.transparent),
        ),
        child: Row(
          children: [
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: (_) => onTap(),
            ),
            SizedBox(width: 4.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.onSurface)),
                Text(subtitle, style: textTheme.labelSmall?.copyWith(fontSize: 10.sp, color: colorScheme.outline)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpiceOption(BuildContext context, String value, String title, String subtitle) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isSelected = selectedSpicy == value;

    return GestureDetector(
      onTap: () => setState(() => selectedSpicy = value),
      child: Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: isSelected ? colorScheme.surfaceContainerLow : colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? colorScheme.primary.withOpacity(0.4) : Colors.transparent,
          ),
        ),
        child: Column(
          children: [
            Text(title, style: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold, color: isSelected ? colorScheme.primary : colorScheme.onSurface)),
            SizedBox(height: 2.h),
            Text(subtitle, style: textTheme.labelSmall?.copyWith(fontSize: 9.sp, color: colorScheme.outline), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  Widget _buildAddonCheckbox(BuildContext context, String key, String title, String subtitle, double price) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final isChecked = selectedAddons[key] ?? false;

    return GestureDetector(
      onTap: () {
        setState(() {
          final newState = !isChecked;
          selectedAddons[key] = newState;
          addonsFee += newState ? price : -price;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainer,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (val) {
                    setState(() {
                      selectedAddons[key] = val ?? false;
                      addonsFee += (val ?? false) ? price : -price;
                    });
                  },
                ),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.primary)),
                    Text(subtitle, style: textTheme.labelSmall?.copyWith(fontSize: 10.sp, color: colorScheme.onSurfaceVariant)),
                  ],
                ),
              ],
            ),
            Text('+$price ج.م', style: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold, color: colorScheme.secondary)),
          ],
        ),
      ),
    );
  }
}
