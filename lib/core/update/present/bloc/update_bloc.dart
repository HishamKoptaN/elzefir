import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/errors/models/error_info.dart';
import '../../../../../../core/networking/api_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/version_info_entity.dart';
import '../../domain/use_cases/update_use_cases.dart';
part 'update_bloc.freezed.dart';
part 'update_event.dart';
part 'update_state.dart';

@singleton
class UpdateBloc extends Bloc<UpdateEvent, UpdateState> {
  final UpdateUseCases updateUseCases;
  UpdateBloc({required this.updateUseCases}) : super(const UpdateState.init()) {
    on<UpdateEvent>((event, emit) async {
      await event.when(
        check: () async {
          emit(const UpdateState.checking());
          await updateUseCases.check().then((res) async {
            await res.when(
              success: (res) async {
                emit(UpdateState.appUpdateAvailable(versionInfo: res!));
              },
              failure: (errorInfo) async {
                emit(UpdateState.failure(errorInfo: errorInfo));
              },
            );
          });
        },
      );
    });
  }
}
