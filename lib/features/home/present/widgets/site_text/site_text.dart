import 'package:flutter/material.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../domain/entities/restaurant_info_entity.dart';
import '../../../domain/use_cases/home_use_cases.dart';

/// يقرأ قيمة نصية لمرة واحدة، للإجراءات التي تحتاج قيمة داخل رابط أو معامل.
Future<String> siteTextValue(String key, String fallback) async {
  try {
    final info = await getIt<HomeUseCases>().watchRestaurantInfo().first;
    return info.text(key, fallback);
  } catch (_) {
    return fallback;
  }
}

/// نص يحدّده المشرف من الداشبورد عبر `settings/general` في فايرستور.
/// عند غياب القيمة يُعرض [fallback]، فتبقى الواجهة سليمة قبل أول حفظ.
class SiteText extends StatelessWidget {
  const SiteText(
    this.settingKey,
    this.fallback, {
    super.key,
    this.style,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.textDirection,
  });

  final String settingKey;
  final String fallback;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<RestaurantInfoEntity>(
      stream: getIt<HomeUseCases>().watchRestaurantInfo(),
      initialData: RestaurantInfoEntity.fallback,
      builder: (context, snapshot) {
        final info = snapshot.data ?? RestaurantInfoEntity.fallback;
        return Text(
          info.text(settingKey, fallback),
          style: style,
          maxLines: maxLines,
          overflow: overflow,
          textAlign: textAlign,
          textDirection: textDirection,
        );
      },
    );
  }
}
