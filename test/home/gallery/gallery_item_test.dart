import 'package:elzefir/features/home/present/widgets/gallery/gallery_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('first slide uses the redesigned young chef image', () {
    final first = GalleryItem.items.first;

    expect(
      first.image,
      'assets/images/gallery_experience_10y_young_chef.jpg',
    );
    expect(first.title, 'خبرة أكثر من 10 أعوام');
  });
}
