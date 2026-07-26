import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_status_entity.freezed.dart';

@freezed
abstract class OrderStatusEntity with _$OrderStatusEntity {
  const factory OrderStatusEntity({
    int? id,
    String? name,
    String? type,
    String? slug,
    int? sort,
    String? message,
    String? icon,
    bool? isActive,
    Translations? translations,
    OriginalEntity? original,
    Color? color,
  }) = _OrderStatusEntity;
}

@freezed
abstract class OriginalEntity with _$OriginalEntity {
  const factory OriginalEntity({int? id, String? name}) = _OriginalEntity;
}

@freezed
abstract class Translations with _$Translations {
  const factory Translations({Ar? ar}) = _Translations;
}

@freezed
abstract class Ar with _$Ar {
  const factory Ar({String? name, String? message}) = _Ar;
}
