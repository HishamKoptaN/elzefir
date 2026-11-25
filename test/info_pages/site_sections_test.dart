import 'dart:convert';

import 'package:elzefir/features/home/domain/entities/restaurant_info_entity.dart';
import 'package:elzefir/features/info_pages/present/content/privacy_content.dart';
import 'package:elzefir/features/info_pages/present/content/site_sections.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('reads dashboard-edited sections from settings/general', () {
    final info = RestaurantInfoEntity.fromFirestore({
      'privacy_sections_json': jsonEncode([
        {
          'title': 'قسم مخصص',
          'paragraphs': ['فقرة أولى'],
          'bullets': ['بند أول'],
        },
      ]),
    });

    final sections = readInfoSections(
      info,
      'privacy_sections_json',
      PrivacyContent.sections,
    );

    expect(sections, hasLength(1));
    expect(sections.single.title, 'قسم مخصص');
    expect(sections.single.paragraphs, ['فقرة أولى']);
    expect(sections.single.bullets, ['بند أول']);
  });

  test('falls back to the built-in sections when nothing was saved', () {
    final sections = readInfoSections(
      RestaurantInfoEntity.fallback,
      'privacy_sections_json',
      PrivacyContent.sections,
    );
    expect(sections, same(PrivacyContent.sections));
  });

  test('reads about sections, features and CTA from site settings', () {
    final info = RestaurantInfoEntity.fromFirestore({
      'about_sections_json': jsonEncode([
        {'id': 'mission', 'title': 'رسالتنا المعدّلة', 'paragraphs': ['نص']},
      ]),
      'about_features_json': jsonEncode([
        {'title': 'ميزة', 'description': 'وصف'},
      ]),
      'about_cta_title': 'اطلب الآن',
    });

    final about = AboutSiteContent.read(info);

    expect(about.sectionsById['mission']?.title, 'رسالتنا المعدّلة');
    expect(about.features?.single.title, 'ميزة');
    expect(about.ctaTitle, 'اطلب الآن');
    expect(about.ctaSubtitle, isNull);
  });
}
