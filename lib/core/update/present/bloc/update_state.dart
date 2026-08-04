part of 'update_bloc.dart';

@freezed
class UpdateState with _$UpdateState {
  const factory UpdateState.init() = _Init;
  const factory UpdateState.checking() = _Checking;
  const factory UpdateState.upToDate() = _UpToDate;
  const factory UpdateState.appUpdateAvailable({
    required VersionInfoEntity versionInfo,
  }) = _AppUpdateAvailable;
  const factory UpdateState.failure({required ErrorInfo errorInfo}) = _Failure;
}
