import '../../../../generated/assets.gen.dart';
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
          price: '١٢٠',
          image: Assets.mock.grilledTilapia.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'بلطي مقلي',
          title: 'بلطي مقلي',
          description: 'طبق من السمك المقلي مع الأرز والسلطة ',
          price: '١٢٠',
          image: Assets.mock.friedTilapia.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'بوري ',
          title: 'سمك بوري مشوي',
          description: 'سمك بوري مشوي على الفحم مع الأرز والسلطة ',
          price: '٤٥',
          image: Assets.mock.grilledMullet.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'تونة',
          title: 'تونة مشوية',
          description: 'سمك تونة مشوي',
          price: '٤٥',
          image: Assets.mock.grilledTunaFish.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'فيليه ',
          title: 'سمك فيليه مشوي',
          description: 'سمك فيليه مشوي',
          price: '٤٥',
          image: Assets.mock.friedFishFillet.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'جمبري',
          title: 'جمبري مشوي',
          description: 'جمبري مشوي',
          price: '400',
          image: Assets.mock.grilledShrimp.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'سبيط مقلي',
          title: 'سبيط مقلي',
          description: 'سبيط مقلي',
          price: '400',
          image: Assets.mock.friedSquid.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
        ProductModel(
          name: 'صيادية',
          title: 'صيادية',
          description: 'طبق صيادية مع الأرز ',
          price: '٤٥',
          image: Assets.mock.sayadiehRice.path,
          category: CategoryModel(id: 1, name: 'أسماك'),
        ),
      ],
      additions: [
        AdditionModel(
          id: 1,
          name: 'طحينة ',
          title: 'طحينة ',
          description: 'طحينة ',
          price: '١٠',
          image: Assets.mock.tahini.path,
        ),
        AdditionModel(
          id: 2,
          name: 'سلطة',
          title: 'سلطة',
          description: 'سلطة',
          price: '١٠',
          image: Assets.mock.saled.path,
        ),
        AdditionModel(
          id: 3,
          name: 'أرز',
          title: 'أرز',
          description: 'أرز',
          price: '١٠',
          image: Assets.mock.saled.path,
        ),
        AdditionModel(
          id: 4,
          name: 'مكرونة',
          title: 'مكرونة',
          description: 'مكرونة',
          price: '١٠',
          image: Assets.mock.saled.path,
        ),
      ],
    );
  }
}
