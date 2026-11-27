import 'dart:convert';

import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/home/present/widgets/gallery/gallery_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('first slide uses the redesigned young chef image', () {
    final first = GalleryItem.items.first;

    expect(first.image, 'assets/images/gallery_experience_10y.jpg');
    expect(first.title, 'خبرة أكثر من 15 عاماً');
  });

  test('reads gallery slides saved from the dashboard', () {
    final info = RestaurantInfoEntity.fromFirestore({
      'gallery_items_json': jsonEncode([
        {
          'image': 'https://example.com/slide.png',
          'title': 'شريحة مخصصة',
          'caption': 'وصف الشريحة',
        },
      ]),
    });

    final slides = GalleryItem.fromSite(info);

    expect(slides, hasLength(1));
    expect(slides.single.image, 'https://example.com/slide.png');
    expect(slides.single.title, 'شريحة مخصصة');
  });

  test('falls back to built-in slides when nothing was saved', () {
    final slides = GalleryItem.fromSite(RestaurantInfoEntity.fallback);
    expect(slides.length, GalleryItem.items.length);
    expect(slides.first.title, GalleryItem.items.first.title);
  });
}
