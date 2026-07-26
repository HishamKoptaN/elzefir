import '../../../categories/data/model/categories_res_model.dart';
import '../../../products/data/model/product_model.dart';
import '../model/home_res_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeMockDataSource {
  Future<HomeResModel> get() async {
    return HomeResModel(
      offerImage: 'assets/mock/offer.png',
      categories: [
        CategoryModel(id: 1, name: 'أسماك'),
        CategoryModel(id: 2, name: 'طواجن'),
        CategoryModel(id: 3, name: 'أطباق جانبية'),
        CategoryModel(id: 4, name: 'الجمبري'),
        CategoryModel(id: 5, name: 'السبيط'),
        CategoryModel(id: 6, name: 'الكابوريا'),
        CategoryModel(id: 7, name: 'الأرز والمكرونة'),
        CategoryModel(id: 8, name: 'السلطات'),
        CategoryModel(id: 9, name: 'الإضافات'),
      ],
      products: [
        ProductModel(
          name: 'بلطي مشوي',
          title: 'بلطي مشوي عالفحم',
          description: 'طبق من السمك المشوي على الفحم مع الأرز والسلطة ',
          price: '١٥٠',
          image: 'assets/mock/offer.png',
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'دنيس',
          title: 'سمك دنيس مشوي',
          description: 'سمك دنيس مشوي على الفحم مع الأرز والسلطة ',
          price: '٤٥',
          image: 'assets/mock/offer.png',
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'قاروس',
          title: 'سمك قاروس مشوي',
          description: 'سمك قاروس مشوي على الفحم مع الأرز والسلطة ',
          price: '٤٥',
          image: 'assets/mock/offer.png',
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'بوري ',
          title: 'سمك بوري مشوي',
          description: 'سمك بوري مشوي على الفحم مع الأرز والسلطة ',
          price: '٤٥',
          image: 'assets/mock/offer.png',
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'فيليه ',
          title: 'سمك فيليه مشوي',
          description: 'سمك فيليه مشوي على الفحم مع الأرز والسلطة ',
          price: '٤٥',
          image: 'assets/mock/offer.png',
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'جمبري',
          title: 'جمبري مشوي',
          description: 'جمبري مشوي على الفحم مع الأرز والسلطة ',
          price: '٤٥',
          image: 'assets/mock/offer.png',
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'صيادية',
          title: 'صيادية',
          description: 'صيادية مع الأرز والسلطة ',
          price: '٤٥',
          image: 'assets/mock/offer.png',
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
      ],
      additions: [
        AdditionModel(name: 'أرز أبيض', price: '١٠'),
        AdditionModel(name: 'طحينة ', price: '١٠'),
        AdditionModel(name: 'سلطة', price: '١٠'),
        AdditionModel(name: 'أرز صيادية ', price: '١٠'),
      ],
    );
  }
}
