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
}

class InfoFeature {
  const InfoFeature({required this.title, required this.description});

  final String title;
  final String description;
}
