import 'package:freezed_annotation/freezed_annotation.dart';
part 'version_info_entity.freezed.dart';

@freezed
abstract class VersionInfoEntity with _$VersionInfoEntity {
  const factory VersionInfoEntity({String? buildNumber, String? message}) =
      _VersionInfoEntity;
}
