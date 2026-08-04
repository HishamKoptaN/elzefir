import 'package:injectable/injectable.dart';
import '../../../../../../core/networking/api_result.dart';
import '../repo/update_repo.dart';
import '../entities/version_info_entity.dart';

@singleton
class UpdateUseCases {
  final UpdateRepo updateRepo;
  UpdateUseCases({required this.updateRepo});
  Future<ApiResult<VersionInfoEntity>> check() async {
    return await updateRepo.check();
  }
}
