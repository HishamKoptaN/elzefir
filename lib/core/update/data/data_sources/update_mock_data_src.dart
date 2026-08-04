import '../model/version_info_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class UpdateMockDataSource {
  Future<VersionInfoModel> check() async {
    return VersionInfoModel();
  }
}
