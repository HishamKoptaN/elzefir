import '../../../../../../core/networking/api_result.dart';
import '../entities/version_info_entity.dart';

abstract class UpdateRepo {
  Future<ApiResult<VersionInfoEntity>> check();
}
