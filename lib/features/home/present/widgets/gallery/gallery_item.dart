import '../../../../../generated/assets.gen.dart';

class GalleryItem {
  const GalleryItem({
    required this.image,
    required this.title,
    required this.caption,
  });

  final String image;
  final String title;
  final String caption;

  static List<GalleryItem> get items {
    return [
      GalleryItem(
        image: Assets.images.galleryExperience10yYoungChef.path,
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
