import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
abstract class FilterModel with _$FilterModel {
  const factory FilterModel({
    int? id,
    String? name,
    String? type,
    List<ValueModel>? values,
  }) = _FilterModel;
  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}

@freezed
abstract class ValueModel with _$ValueModel {
  const factory ValueModel({int? id, String? value}) = _ValueModel;
  factory ValueModel.fromJson(Map<String, dynamic> json) =>
      _$ValueModelFromJson(json);
}
