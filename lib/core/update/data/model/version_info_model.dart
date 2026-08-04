import 'package:freezed_annotation/freezed_annotation.dart';
part 'version_info_model.freezed.dart';
part 'version_info_model.g.dart';

@freezed
abstract class VersionInfoModel with _$VersionInfoModel {
  const factory VersionInfoModel({String? buildNumber, String? message}) =
      _VersionInfoModel;
  factory VersionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$VersionInfoModelFromJson(json);
}
