import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../model/categories_res_model.dart';
part 'categories_api.g.dart';

@singleton
@RestApi()
abstract class CategoriesApi {
  @factoryMethod
  factory CategoriesApi(Dio dio) = _CategoriesApi;
  //! Get
  @GET(ApiConstants.optionCategories)
  Future<List<CategoryModel>> get();
}
