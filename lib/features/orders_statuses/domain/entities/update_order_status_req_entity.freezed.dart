// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_order_status_req_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateOrderStatusReqEntity {

 String? get orderId; int? get statusId;
/// Create a copy of UpdateOrderStatusReqEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateOrderStatusReqEntityCopyWith<UpdateOrderStatusReqEntity> get copyWith => _$UpdateOrderStatusReqEntityCopyWithImpl<UpdateOrderStatusReqEntity>(this as UpdateOrderStatusReqEntity, _$identity);

  /// Serializes this UpdateOrderStatusReqEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UpdateOrderStatusReqEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateOrderStatusReqEntity&&(identical(other.orderId, _this.orderId) || other.orderId == _this.orderId)&&(identical(other.statusId, _this.statusId) || other.statusId == _this.statusId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UpdateOrderStatusReqEntity;
  return Object.hash(runtimeType,_this.orderId,_this.statusId);
}

@override
String toString() {
  final _this = this as UpdateOrderStatusReqEntity;
  return 'UpdateOrderStatusReqEntity(orderId: ${_this.orderId}, statusId: ${_this.statusId})';
}


}

/// @nodoc
abstract mixin class $UpdateOrderStatusReqEntityCopyWith<$Res>  {
  factory $UpdateOrderStatusReqEntityCopyWith(UpdateOrderStatusReqEntity value, $Res Function(UpdateOrderStatusReqEntity) _then) = _$UpdateOrderStatusReqEntityCopyWithImpl;
@useResult
$Res call({
 String? orderId, int? statusId
});




}
/// @nodoc
class _$UpdateOrderStatusReqEntityCopyWithImpl<$Res>
    implements $UpdateOrderStatusReqEntityCopyWith<$Res> {
  _$UpdateOrderStatusReqEntityCopyWithImpl(this._self, this._then);

  final UpdateOrderStatusReqEntity _self;
  final $Res Function(UpdateOrderStatusReqEntity) _then;

/// Create a copy of UpdateOrderStatusReqEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = freezed,Object? statusId = freezed,}) {
  return _then(UpdateOrderStatusReqEntity(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,statusId: freezed == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateOrderStatusReqEntity].
extension UpdateOrderStatusReqEntityPatterns on UpdateOrderStatusReqEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateOrderStatusReqEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateOrderStatusReqEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateOrderStatusReqEntity value)  $default,){
final _that = this;
switch (_that) {
case _UpdateOrderStatusReqEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateOrderStatusReqEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateOrderStatusReqEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? orderId,  int? statusId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateOrderStatusReqEntity() when $default != null:
return $default(_that.orderId,_that.statusId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? orderId,  int? statusId)  $default,) {final _that = this;
switch (_that) {
case _UpdateOrderStatusReqEntity():
return $default(_that.orderId,_that.statusId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? orderId,  int? statusId)?  $default,) {final _that = this;
switch (_that) {
case _UpdateOrderStatusReqEntity() when $default != null:
return $default(_that.orderId,_that.statusId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateOrderStatusReqEntity implements UpdateOrderStatusReqEntity {
   _UpdateOrderStatusReqEntity({required this.orderId, required this.statusId});
  factory _UpdateOrderStatusReqEntity.fromJson(Map<String, dynamic> json) => _$UpdateOrderStatusReqEntityFromJson(json);

@override final  String? orderId;
@override final  int? statusId;

/// Create a copy of UpdateOrderStatusReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateOrderStatusReqEntityCopyWith<_UpdateOrderStatusReqEntity> get copyWith => __$UpdateOrderStatusReqEntityCopyWithImpl<_UpdateOrderStatusReqEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateOrderStatusReqEntityToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateOrderStatusReqEntity&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.statusId, statusId) || other.statusId == statusId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,orderId,statusId);
}

@override
String toString() {
    return 'UpdateOrderStatusReqEntity(orderId: $orderId, statusId: $statusId)';
}


}

/// @nodoc
abstract mixin class _$UpdateOrderStatusReqEntityCopyWith<$Res> implements $UpdateOrderStatusReqEntityCopyWith<$Res> {
  factory _$UpdateOrderStatusReqEntityCopyWith(_UpdateOrderStatusReqEntity value, $Res Function(_UpdateOrderStatusReqEntity) _then) = __$UpdateOrderStatusReqEntityCopyWithImpl;
@override @useResult
$Res call({
 String? orderId, int? statusId
});




}
/// @nodoc
class __$UpdateOrderStatusReqEntityCopyWithImpl<$Res>
    implements _$UpdateOrderStatusReqEntityCopyWith<$Res> {
  __$UpdateOrderStatusReqEntityCopyWithImpl(this._self, this._then);

  final _UpdateOrderStatusReqEntity _self;
  final $Res Function(_UpdateOrderStatusReqEntity) _then;

/// Create a copy of UpdateOrderStatusReqEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = freezed,Object? statusId = freezed,}) {
  return _then(_UpdateOrderStatusReqEntity(
orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,statusId: freezed == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
