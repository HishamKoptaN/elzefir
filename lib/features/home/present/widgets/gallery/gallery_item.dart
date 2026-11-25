import 'dart:convert';

import '../../../../../generated/assets.gen.dart';
import '../../../domain/entities/restaurant_info_entity.dart';

class GalleryItem {
  const GalleryItem({
    required this.image,
    required this.title,
    required this.caption,
  });

  final String image;
  final String title;
  final String caption;

  /// الشرائح التي حرّرها المشرف، والقيم الافتراضية عند غيابها.
  static List<GalleryItem> fromSite(RestaurantInfoEntity info) {
    final raw = info.raw['gallery_items_json'];
    if (raw is! String || raw.trim().isEmpty) return items;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is! List || decoded.isEmpty) return items;
      final slides = <GalleryItem>[];
      for (final item in decoded) {
        if (item is Map<String, dynamic>) {
          slides.add(
            GalleryItem(
              image: item['image']?.toString() ?? '',
              title: item['title']?.toString() ?? '',
              caption: item['caption']?.toString() ?? '',
            ),
          );
        }
      }
      return slides.isEmpty ? items : slides;
    } catch (_) {
      return items;
    }
  }

  static List<GalleryItem> get items {
    return [
      GalleryItem(
        image: Assets.images.galleryExperience10y.path,
        title: 'خبرة أكثر من 10 أعوام',
        caption: 'خبرة حقيقية في طهو الأسماك الطازجة',
      ),
      GalleryItem(
        image: Assets.images.galleryCleanliness.path,
        title: 'النظافة أولويتنا',
        caption: 'مطبخ نظيف ومُعدّ بعناية لكل طلب',
      ),
      GalleryItem(
        image: Assets.images.galleryRealBetter.path,
        title: 'الأصل أحلى من الصورة',
        caption: 'طعم حقيقي من المطبخ إلى طاولةك',
      ),
      GalleryItem(
        image: Assets.images.galleryFreshDaily.path,
        title: 'طازج يومياً',
        caption: 'أسماك طازجة كل يوم من البحر',
      ),
    ];
  }
}
