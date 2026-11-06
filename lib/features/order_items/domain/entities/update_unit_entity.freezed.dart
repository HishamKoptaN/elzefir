// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_unit_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateUnitEntity {

 int? get orderId; int? get orderItemId; int? get unitId; LinkFormInput? get documentationLink; FormzSubmissionStatus get formzSubmissionStatus;
/// Create a copy of UpdateUnitEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateUnitEntityCopyWith<UpdateUnitEntity> get copyWith => _$UpdateUnitEntityCopyWithImpl<UpdateUnitEntity>(this as UpdateUnitEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateUnitEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateUnitEntity&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.orderItemId, _this.orderItemId) || other.orderItemId == _this.orderItemId)&&(identical(other.unitId, _this.unitId) || other.unitId == _this.unitId)&&(identical(other.documentationLink, _this.documentationLink) || other.documentationLink == _this.documentationLink)&&(identical(other.formzSubmissionStatus, _this.formzSubmissionStatus) || other.formzSubmissionStatus == _this.formzSubmissionStatus));
}


@override
int get hashCode {
  final _this = this as UpdateUnitEntity;
  return Object.hash(runtimeType,_this.orderId,_this.orderItemId,_this.unitId,_this.documentationLink,_this.formzSubmissionStatus);
}

@override
String toString() {
  final _this = this as UpdateUnitEntity;
  return 'UpdateUnitEntity(orderId: ${_this.orderId}, orderItemId: ${_this.orderItemId}, unitId: ${_this.unitId}, documentationLink: ${_this.documentationLink}, formzSubmissionStatus: ${_this.formzSubmissionStatus})';
}


}

/// @nodoc
abstract mixin class $UpdateUnitEntityCopyWith<$Res>  {
  factory $UpdateUnitEntityCopyWith(UpdateUnitEntity value, $Res Function(UpdateUnitEntity) _then) = _$UpdateUnitEntityCopyWithImpl;
@useResult
$Res call({
 int? orderId, int? orderItemId, int? unitId, LinkFormInput? documentationLink, FormzSubmissionStatus formzSubmissionStatus
});




}
/// @nodoc
class _$UpdateUnitEntityCopyWithImpl<$Res>
    implements $UpdateUnitEntityCopyWith<$Res> {
  _$UpdateUnitEntityCopyWithImpl(this._self, this._then);

  final UpdateUnitEntity _self;
  final $Res Function(UpdateUnitEntity) _then;

/// Create a copy of UpdateUnitEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = freezed,Object? orderItemId = freezed,Object? unitId = freezed,Object? documentationLink = freezed,Object? formzSubmissionStatus = null,}) {
  return _then(UpdateUnitEntity(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,orderItemId: freezed == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,documentationLink: freezed == documentationLink ? _self.documentationLink : documentationLink // ignore: cast_nullable_to_non_nullable
as LinkFormInput?,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateUnitEntity].
extension UpdateUnitEntityPatterns on UpdateUnitEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateUnitEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateUnitEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateUnitEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpdateUnitEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateUnitEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateUnitEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? orderId,  int? orderItemId,  int? unitId,  LinkFormInput? documentationLink,  FormzSubmissionStatus formzSubmissionStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateUnitEntity() when $default != null:
return $default(_that.orderId,_that.orderItemId,_that.unitId,_that.documentationLink,_that.formzSubmissionStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? orderId,  int? orderItemId,  int? unitId,  LinkFormInput? documentationLink,  FormzSubmissionStatus formzSubmissionStatus)  $default,) {final _that = this;
switch (_that) {
case _UpdateUnitEntity():
return $default(_that.orderId,_that.orderItemId,_that.unitId,_that.documentationLink,_that.formzSubmissionStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? orderId,  int? orderItemId,  int? unitId,  LinkFormInput? documentationLink,  FormzSubmissionStatus formzSubmissionStatus)?  $default,) {final _that = this;
switch (_that) {
case _UpdateUnitEntity() when $default != null:
return $default(_that.orderId,_that.orderItemId,_that.unitId,_that.documentationLink,_that.formzSubmissionStatus);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateUnitEntity extends UpdateUnitEntity {
  const _UpdateUnitEntity({this.orderId, this.orderItemId, this.unitId, this.documentationLink, this.formzSubmissionStatus = FormzSubmissionStatus.initial}): super._();
  

@override final  int? orderId;
@override final  int? orderItemId;
@override final  int? unitId;
@override final  LinkFormInput? documentationLink;
@override@JsonKey() final  FormzSubmissionStatus formzSubmissionStatus;

/// Create a copy of UpdateUnitEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateUnitEntityCopyWith<_UpdateUnitEntity> get copyWith => __$UpdateUnitEntityCopyWithImpl<_UpdateUnitEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateUnitEntity&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.documentationLink, documentationLink) || other.documentationLink == documentationLink)&&(identical(other.formzSubmissionStatus, formzSubmissionStatus) || other.formzSubmissionStatus == formzSubmissionStatus));
}


@override
int get hashCode {
    return Object.hash(runtimeType,orderId,orderItemId,unitId,documentationLink,formzSubmissionStatus);
}

@override
String toString() {
    return 'UpdateUnitEntity(orderId: $orderId, orderItemId: $orderItemId, unitId: $unitId, documentationLink: $documentationLink, formzSubmissionStatus: $formzSubmissionStatus)';
}


}

/// @nodoc
abstract mixin class _$UpdateUnitEntityCopyWith<$Res> implements $UpdateUnitEntityCopyWith<$Res> {
  factory _$UpdateUnitEntityCopyWith(_UpdateUnitEntity value, $Res Function(_UpdateUnitEntity) _then) = __$UpdateUnitEntityCopyWithImpl;
@override @useResult
$Res call({
 int? orderId, int? orderItemId, int? unitId, LinkFormInput? documentationLink, FormzSubmissionStatus formzSubmissionStatus
});




}
/// @nodoc
class __$UpdateUnitEntityCopyWithImpl<$Res>
    implements _$UpdateUnitEntityCopyWith<$Res> {
  __$UpdateUnitEntityCopyWithImpl(this._self, this._then);

  final _UpdateUnitEntity _self;
  final $Res Function(_UpdateUnitEntity) _then;

/// Create a copy of UpdateUnitEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? orderItemId = freezed,Object? unitId = freezed,Object? documentationLink = freezed,Object? formzSubmissionStatus = null,}) {
  return _then(_UpdateUnitEntity(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int?,orderItemId: freezed == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as int?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as int?,documentationLink: freezed == documentationLink ? _self.documentationLink : documentationLink // ignore: cast_nullable_to_non_nullable
as LinkFormInput?,formzSubmissionStatus: null == formzSubmissionStatus ? _self.formzSubmissionStatus : formzSubmissionStatus // ignore: cast_nullable_to_non_nullable
as FormzSubmissionStatus,
  ));
}


}

// dart format on
