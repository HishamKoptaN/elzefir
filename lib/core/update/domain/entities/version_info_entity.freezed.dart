// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'version_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VersionInfoEntity {

 String? get buildNumber; String? get message;
/// Create a copy of VersionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VersionInfoEntityCopyWith<VersionInfoEntity> get copyWith => _$VersionInfoEntityCopyWithImpl<VersionInfoEntity>(this as VersionInfoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VersionInfoEntity&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,buildNumber,message);

@override
String toString() {
  return 'VersionInfoEntity(buildNumber: $buildNumber, message: $message)';
}


}

/// @nodoc
abstract mixin class $VersionInfoEntityCopyWith<$Res>  {
  factory $VersionInfoEntityCopyWith(VersionInfoEntity value, $Res Function(VersionInfoEntity) _then) = _$VersionInfoEntityCopyWithImpl;
@useResult
$Res call({
 String? buildNumber, String? message
});




}
/// @nodoc
class _$VersionInfoEntityCopyWithImpl<$Res>
    implements $VersionInfoEntityCopyWith<$Res> {
  _$VersionInfoEntityCopyWithImpl(this._self, this._then);

  final VersionInfoEntity _self;
  final $Res Function(VersionInfoEntity) _then;

/// Create a copy of VersionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? buildNumber = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
buildNumber: freezed == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VersionInfoEntity].
extension VersionInfoEntityPatterns on VersionInfoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VersionInfoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VersionInfoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VersionInfoEntity value)  $default,){
final _that = this;
switch (_that) {
case _VersionInfoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VersionInfoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _VersionInfoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? buildNumber,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VersionInfoEntity() when $default != null:
return $default(_that.buildNumber,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? buildNumber,  String? message)  $default,) {final _that = this;
switch (_that) {
case _VersionInfoEntity():
return $default(_that.buildNumber,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? buildNumber,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _VersionInfoEntity() when $default != null:
return $default(_that.buildNumber,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _VersionInfoEntity implements VersionInfoEntity {
  const _VersionInfoEntity({this.buildNumber, this.message});
  

@override final  String? buildNumber;
@override final  String? message;

/// Create a copy of VersionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VersionInfoEntityCopyWith<_VersionInfoEntity> get copyWith => __$VersionInfoEntityCopyWithImpl<_VersionInfoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VersionInfoEntity&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,buildNumber,message);

@override
String toString() {
  return 'VersionInfoEntity(buildNumber: $buildNumber, message: $message)';
}


}

/// @nodoc
abstract mixin class _$VersionInfoEntityCopyWith<$Res> implements $VersionInfoEntityCopyWith<$Res> {
  factory _$VersionInfoEntityCopyWith(_VersionInfoEntity value, $Res Function(_VersionInfoEntity) _then) = __$VersionInfoEntityCopyWithImpl;
@override @useResult
$Res call({
 String? buildNumber, String? message
});




}
/// @nodoc
class __$VersionInfoEntityCopyWithImpl<$Res>
    implements _$VersionInfoEntityCopyWith<$Res> {
  __$VersionInfoEntityCopyWithImpl(this._self, this._then);

  final _VersionInfoEntity _self;
  final $Res Function(_VersionInfoEntity) _then;

/// Create a copy of VersionInfoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? buildNumber = freezed,Object? message = freezed,}) {
  return _then(_VersionInfoEntity(
buildNumber: freezed == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
