import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../model/version_info_model.dart';
part 'update_api.g.dart';

@singleton
@RestApi()
abstract class UpdateApi {
  @factoryMethod
  factory UpdateApi(@Named('webDio') Dio dio) = _UpdateApi;
  //! Get
  @GET('/version.json')
  Future<VersionInfoModel> check({@Query('t') required int timestamp});
}
