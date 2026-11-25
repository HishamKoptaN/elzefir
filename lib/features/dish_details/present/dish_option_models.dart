class CookingOption {
  const CookingOption({
    required this.id,
    required this.title,
    required this.priceText,
    required this.cost,
    required this.description,
    this.badge,
  });

  final String id;
  final String title;
  final String priceText;
  final double cost;
  final String description;
  final String? badge;

  factory CookingOption.fromSiteJson(Map<String, dynamic> json) {
    final badge = json['badge']?.toString().trim() ?? '';
    return CookingOption(
      id: json['id']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      priceText: json['priceText']?.toString() ?? '',
      cost: double.tryParse(json['cost']?.toString() ?? '') ?? 0,
      description: json['description']?.toString() ?? '',
      badge: badge.isEmpty ? null : badge,
    );
  }
}

class AddonOption {
  const AddonOption({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.cost,
  });

  final String id;
  final String title;
  final String subtitle;
  final double cost;

  factory AddonOption.fromSiteJson(Map<String, dynamic> json) {
    return AddonOption(
      id: json['id']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      subtitle: json['subtitle']?.toString() ?? '',
      cost: double.tryParse(json['cost']?.toString() ?? '') ?? 0,
    );
  }
}
