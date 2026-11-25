class InfoSection {
  const InfoSection({
    required this.title,
    this.paragraphs = const [],
    this.bullets = const [],
    this.linkUrl,
    this.linkLabel,
  });

  final String title;
  final List<String> paragraphs;
  final List<String> bullets;
  final String? linkUrl;
  final String? linkLabel;

  factory InfoSection.fromSiteJson(Map<String, dynamic> json) {
    return InfoSection(
      title: json['title']?.toString() ?? '',
      paragraphs: _textList(json['paragraphs']),
      bullets: _textList(json['bullets']),
      linkUrl: json['linkUrl']?.toString(),
      linkLabel: json['linkLabel']?.toString(),
    );
  }

  static List<String> _textList(Object? value) {
    if (value is! List) return const [];
    return value.map((e) => e.toString()).toList();
  }
}

class InfoFeature {
  const InfoFeature({required this.title, required this.description});

  final String title;
  final String description;
}
