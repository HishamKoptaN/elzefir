import '../model/version_info_model.dart';

abstract interface class UpdateDataSrc {
  Future<VersionInfoModel> check();
}
