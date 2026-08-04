part of 'update_bloc.dart';

@freezed
abstract class UpdateEvent with _$UpdateEvent {
  const factory UpdateEvent.check({required Completer onComplete}) = _Check;
}
