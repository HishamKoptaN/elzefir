import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_unit_entity.freezed.dart';

@freezed
abstract class UpdateUnitEntity with _$UpdateUnitEntity {
  const UpdateUnitEntity._();
  const factory UpdateUnitEntity({
    int? orderId,
    int? orderItemId,
    int? unitId,
    LinkFormInput? documentationLink,
    @Default(FormzSubmissionStatus.initial)
    FormzSubmissionStatus formzSubmissionStatus,
  }) = _UpdateUnitEntity;

  UpdateUnitEntity copyWithValidation({
    int? orderId,
    int? orderItemId,
    int? unitId,
    LinkFormInput? documentationLink,
  }) {
    final newEntity = copyWith(
      orderId: orderId,
      orderItemId: orderItemId,
      unitId: unitId,
      documentationLink: documentationLink,
    );
    return newEntity.copyWith(
      formzSubmissionStatus: newEntity.formzSubmissionStatus,
    );
  }

  bool isEdited({required String? documentationLink}) {
    final bool nameChanged = documentationLink != this.documentationLink?.value;
    if (nameChanged) return true;
    return false;
  }
}
