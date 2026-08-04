import '../../domain/entities/version_info_entity.dart';
import '../model/version_info_model.dart';

extension VersionInfoModelMapper on VersionInfoModel {
  VersionInfoEntity toEntity() {
    return VersionInfoEntity(buildNumber: buildNumber, message: message);
  }
}
