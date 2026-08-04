import 'package:injectable/injectable.dart';
import '../../../../config/env_config.dart';
import 'update_api.dart';
import '../model/version_info_model.dart';
import 'update_data_src.dart';
import 'update_mock_data_src.dart';

@Singleton(as: UpdateDataSrc)
class UpdateDataSrcImpl implements UpdateDataSrc {
  final UpdateApi api;
  final UpdateMockDataSource mock;
  UpdateDataSrcImpl({required this.api, required this.mock});
  @override
  Future<VersionInfoModel> check() {
    switch (EnvConfig.config.dataSourceMode) {
      case DataSrcMode.api:
        return api.check();
      case DataSrcMode.mock:
        return mock.check();
    }
  }
}
