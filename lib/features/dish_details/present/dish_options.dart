import 'dart:convert';

import '../../home/domain/entities/restaurant_info_entity.dart';
import 'dish_option_models.dart';

/// طرق الطهي والإضافات التي يحددها المشرف، مع القيم الافتراضية عند غيابها.
class DishOptions {
  static List<CookingOption> cooking(RestaurantInfoEntity info) {
    return _read(
      info,
      'cooking_methods_json',
      _defaultCooking,
      CookingOption.fromSiteJson,
    );
  }

  static List<AddonOption> addons(RestaurantInfoEntity info) {
    return _read(info, 'addons_json', _defaultAddons, AddonOption.fromSiteJson);
  }

  static List<T> _read<T>(
    RestaurantInfoEntity info,
    String key,
    List<T> fallback,
    T Function(Map<String, dynamic>) parse,
  ) {
    final raw = info.raw[key];
    if (raw is! String || raw.trim().isEmpty) return fallback;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! List || decoded.isEmpty) return fallback;
      final items = <T>[
        for (final item in decoded)
          if (item is Map<String, dynamic>) parse(item),
      ];
      return items.isEmpty ? fallback : items;
    } catch (_) {
      return fallback;
    }
  }

  static const _defaultCooking = [
    CookingOption(
      id: 'singari',
      title: 'سنجاري إسكندراني بالفرن',
      badge: 'الأكثر طلباً 🔥',
      priceText: '+15 ج.م',
      cost: 15,
      description: 'مفتوح سنجاري متبل بالبصل والفلفل والطماطم مع الثوم وزيت الزيتون والليمون في الفرن.',
    ),
    CookingOption(
      id: 'grilled_radda',
      title: 'مشوي بالردة على الصاج',
      priceText: 'مجاناً',
      cost: 0,
      description: 'التسوية السكندرية الفلاحية الأصلية برائحة الشواء مع دقة الخل والليمون والكمون الحارة.',
    ),
    CookingOption(
      id: 'crispy_fried',
      title: 'مقلي مقرمش بخلطة الزفر',
      priceText: '+10 ج.م',
      cost: 10,
      description: 'متبل بتتبيلة الكمون والكسبرة مع طبقة قرمشة ذهبية خفيفة.',
    ),
    CookingOption(
      id: 'oil_lemon',
      title: 'زيت وليمون خفيف بالفرن',
      priceText: '+10 ج.م',
      cost: 10,
      description: 'خيار صحي دايت مع شرائح الليمون والكرفس ورشة زيت زيتون بكر.',
    ),
  ];

  static const _defaultAddons = [
    AddonOption(
      id: 'rice',
      title: 'أرز صيادية بلدي بالبصل المكرمل',
      subtitle: 'طبق فردي مشبع مع لمسة قرفة خفيفة',
      cost: 25,
    ),
    AddonOption(
      id: 'tahini',
      title: 'سلطة طحينة سمسم بيضاء',
      subtitle: 'طحينة خام مع الكمون والخل والليمون',
      cost: 15,
    ),
    AddonOption(
      id: 'salad',
      title: 'سلطة خضراء بلدي بالدقة',
      subtitle: 'طماطم، خيار، جرجير، كرفس مع ليمون',
      cost: 15,
    ),
    AddonOption(
      id: 'bread',
      title: 'رغيفين عيش بلدي سخن ردة',
      subtitle: 'طازج من الفرن مباشرة مع الوجبة',
      cost: 5,
    ),
  ];
}
