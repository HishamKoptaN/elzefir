import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../core/errors/error_handler.dart';
import '../data_sources/update_data_src.dart';
import '../mapper/update_mapper.dart';
import '../../domain/repo/update_repo.dart';
import '../../domain/entities/version_info_entity.dart';

@Singleton(as: UpdateRepo)
class UpdateRepoImpl implements UpdateRepo {
  final UpdateDataSrc updateDataSrc;
  UpdateRepoImpl(this.updateDataSrc);
  @override
  Future<ApiResult<VersionInfoEntity>> check() async {
    try {
      return await updateDataSrc.check().then((res) {
        return ApiResult.success(data: res.toEntity());
      });
    } catch (e, s) {
      return ApiResult.failure(errorInfo: ErrorHandler.handle(e, s));
    }
  }
}
