import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../../core/networking/api_constants.dart';
import '../model/version_info_model.dart';
part 'update_api.g.dart';

@singleton
@RestApi()
abstract class UpdateApi {
  @factoryMethod
  factory UpdateApi(Dio dio) = _UpdateApi;
  //! Get
  @GET(ApiConstants.optionCategories)
  Future<VersionInfoModel> check();
}
