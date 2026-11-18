/// بيانات المطعم القابلة للتعديل من مستند فايرستور `settings/general`.
/// تُستخدم للاسم التجاري والشعار وعناصر العرض في الواجهة.
class RestaurantInfoEntity {
  const RestaurantInfoEntity({
    required this.name,
    required this.tagline,
    required this.offerTitle,
    required this.offerDescription,
    required this.offerPrice,
    required this.offerCta,
    this.offerImage,
  });

  final String name;
  final String tagline;
  final String offerTitle;
  final String offerDescription;
  final String offerPrice;
  final String offerCta;
  final String? offerImage;

  /// قيم افتراضية تُعرض قبل وصول أول قراءة أو عند تعذّر القراءة.
  static const fallback = RestaurantInfoEntity(
    name: 'مطعم أسماك الزفر',
    tagline: 'السمك على أصوله • طازج يومياً',
    offerTitle: 'وجبة العائلة التوفيرية',
    offerDescription: 'كيلو سمك مشكل + أرز + سلطات + شوربة',
    offerPrice: '290',
    offerCta: 'اطلب الآن',
  );

  factory RestaurantInfoEntity.fromFirestore(Map<String, dynamic> data) {
    final image = _text(data, const ['offer_image', 'offerImage'], '');
    return RestaurantInfoEntity(
      name: _text(data, const ['restaurant_name', 'restaurantName', 'name'], fallback.name),
      tagline: _text(data, const ['tagline'], fallback.tagline),
      offerTitle: _text(data, const ['offer_title', 'offerTitle'], fallback.offerTitle),
      offerDescription: _text(
        data,
        const ['offer_description', 'offerDescription'],
        fallback.offerDescription,
      ),
      offerPrice: _text(data, const ['offer_price', 'offerPrice'], fallback.offerPrice),
      offerCta: _text(data, const ['offer_cta', 'offerCta'], fallback.offerCta),
      offerImage: image.isEmpty ? null : image,
    );
  }

  static String _text(
    Map<String, dynamic> data,
    List<String> keys,
    String fallbackValue,
  ) {
    for (final key in keys) {
      final value = data[key];
      if (value is String && value.trim().isNotEmpty) {
        return value.trim();
      }
    }
    return fallbackValue;
  }
}
