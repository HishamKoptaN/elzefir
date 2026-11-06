import 'package:injectable/injectable.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/error_handler.dart';
import '../data_sources/home_data_src.dart';
import '../mapper/home_mapper.dart';
import '../../domain/repo/home_repo.dart';
import '../../domain/entities/home_res_entity.dart';

@Singleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  final HomeDataSrc homeDataSrc;
  HomeRepoImpl(this.homeDataSrc);
  @override
  Future<ApiResult<HomeResEntity>> get() async {
    try {
      return await homeDataSrc.get().then((res) {
        return ApiResult.success(data: res.toEntity());
      });
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }
}
