import 'dart:convert';

import 'package:elzefir/features/dish_details/present/dish_options.dart';
import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('reads cooking methods and add-ons saved from the dashboard', () {
    final info = RestaurantInfoEntity.fromFirestore({
      'cooking_methods_json': jsonEncode([
        {
          'id': 'custom',
          'title': 'طريقة مخصصة',
          'priceText': '+20 ج.م',
          'cost': '20',
          'badge': 'الأكثر طلباً 🔥',
          'description': 'وصف الطريقة',
        },
      ]),
      'addons_json': jsonEncode([
        {
          'id': 'extra',
          'title': 'إضافة',
          'subtitle': 'وصف الإضافة',
          'cost': '7',
        },
      ]),
    });

    final methods = DishOptions.cooking(info);
    final addons = DishOptions.addons(info);

    expect(methods.single.id, 'custom');
    expect(methods.single.cost, 20);
    expect(methods.single.badge, 'الأكثر طلباً 🔥');
    expect(addons.single.cost, 7);
  });

  test('falls back to the built-in options when nothing was saved', () {
    final info = RestaurantInfoEntity.fallback;

    expect(DishOptions.cooking(info).first.id, 'singari');
    expect(DishOptions.addons(info).first.id, 'rice');
  });
}
