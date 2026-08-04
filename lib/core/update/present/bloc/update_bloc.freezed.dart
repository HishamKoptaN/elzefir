// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent()';
}


}

/// @nodoc
class $UpdateEventCopyWith<$Res>  {
$UpdateEventCopyWith(UpdateEvent _, $Res Function(UpdateEvent) __);
}


/// Adds pattern-matching-related methods to [UpdateEvent].
extension UpdateEventPatterns on UpdateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Check value)?  check,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Check() when check != null:
return check(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Check value)  check,}){
final _that = this;
switch (_that) {
case _Check():
return check(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Check value)?  check,}){
final _that = this;
switch (_that) {
case _Check() when check != null:
return check(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  check,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Check() when check != null:
return check();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  check,}) {final _that = this;
switch (_that) {
case _Check():
return check();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  check,}) {final _that = this;
switch (_that) {
case _Check() when check != null:
return check();case _:
  return null;

}
}

}

/// @nodoc


class _Check implements UpdateEvent {
  const _Check();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Check);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateEvent.check()';
}


}




/// @nodoc
mixin _$UpdateState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateState()';
}


}

/// @nodoc
class $UpdateStateCopyWith<$Res>  {
$UpdateStateCopyWith(UpdateState _, $Res Function(UpdateState) __);
}


/// Adds pattern-matching-related methods to [UpdateState].
extension UpdateStatePatterns on UpdateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _Checking value)?  checking,TResult Function( _UpToDate value)?  upToDate,TResult Function( _AppUpdateAvailable value)?  appUpdateAvailable,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _Checking() when checking != null:
return checking(_that);case _UpToDate() when upToDate != null:
return upToDate(_that);case _AppUpdateAvailable() when appUpdateAvailable != null:
return appUpdateAvailable(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _Checking value)  checking,required TResult Function( _UpToDate value)  upToDate,required TResult Function( _AppUpdateAvailable value)  appUpdateAvailable,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _Checking():
return checking(_that);case _UpToDate():
return upToDate(_that);case _AppUpdateAvailable():
return appUpdateAvailable(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _Checking value)?  checking,TResult? Function( _UpToDate value)?  upToDate,TResult? Function( _AppUpdateAvailable value)?  appUpdateAvailable,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _Checking() when checking != null:
return checking(_that);case _UpToDate() when upToDate != null:
return upToDate(_that);case _AppUpdateAvailable() when appUpdateAvailable != null:
return appUpdateAvailable(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  checking,TResult Function()?  upToDate,TResult Function( VersionInfoEntity versionInfo)?  appUpdateAvailable,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _Checking() when checking != null:
return checking();case _UpToDate() when upToDate != null:
return upToDate();case _AppUpdateAvailable() when appUpdateAvailable != null:
return appUpdateAvailable(_that.versionInfo);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  checking,required TResult Function()  upToDate,required TResult Function( VersionInfoEntity versionInfo)  appUpdateAvailable,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Init():
return init();case _Checking():
return checking();case _UpToDate():
return upToDate();case _AppUpdateAvailable():
return appUpdateAvailable(_that.versionInfo);case _Failure():
return failure(_that.errorInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  checking,TResult? Function()?  upToDate,TResult? Function( VersionInfoEntity versionInfo)?  appUpdateAvailable,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init();case _Checking() when checking != null:
return checking();case _UpToDate() when upToDate != null:
return upToDate();case _AppUpdateAvailable() when appUpdateAvailable != null:
return appUpdateAvailable(_that.versionInfo);case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements UpdateState {
  const _Init();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateState.init()';
}


}




/// @nodoc


class _Checking implements UpdateState {
  const _Checking();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Checking);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateState.checking()';
}


}




/// @nodoc


class _UpToDate implements UpdateState {
  const _UpToDate();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpToDate);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateState.upToDate()';
}


}




/// @nodoc


class _AppUpdateAvailable implements UpdateState {
  const _AppUpdateAvailable({required this.versionInfo});
  

 final  VersionInfoEntity versionInfo;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppUpdateAvailableCopyWith<_AppUpdateAvailable> get copyWith => __$AppUpdateAvailableCopyWithImpl<_AppUpdateAvailable>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppUpdateAvailable&&(identical(other.versionInfo, versionInfo) || other.versionInfo == versionInfo));
}


@override
int get hashCode => Object.hash(runtimeType,versionInfo);

@override
String toString() {
  return 'UpdateState.appUpdateAvailable(versionInfo: $versionInfo)';
}


}

/// @nodoc
abstract mixin class _$AppUpdateAvailableCopyWith<$Res> implements $UpdateStateCopyWith<$Res> {
  factory _$AppUpdateAvailableCopyWith(_AppUpdateAvailable value, $Res Function(_AppUpdateAvailable) _then) = __$AppUpdateAvailableCopyWithImpl;
@useResult
$Res call({
 VersionInfoEntity versionInfo
});


$VersionInfoEntityCopyWith<$Res> get versionInfo;

}
/// @nodoc
class __$AppUpdateAvailableCopyWithImpl<$Res>
    implements _$AppUpdateAvailableCopyWith<$Res> {
  __$AppUpdateAvailableCopyWithImpl(this._self, this._then);

  final _AppUpdateAvailable _self;
  final $Res Function(_AppUpdateAvailable) _then;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? versionInfo = null,}) {
  return _then(_AppUpdateAvailable(
versionInfo: null == versionInfo ? _self.versionInfo : versionInfo // ignore: cast_nullable_to_non_nullable
as VersionInfoEntity,
  ));
}

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionInfoEntityCopyWith<$Res> get versionInfo {
  
  return $VersionInfoEntityCopyWith<$Res>(_self.versionInfo, (value) {
    return _then(_self.copyWith(versionInfo: value));
  });
}
}

/// @nodoc


class _Failure implements UpdateState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.errorInfo, errorInfo) || other.errorInfo == errorInfo));
}


@override
int get hashCode => Object.hash(runtimeType,errorInfo);

@override
String toString() {
  return 'UpdateState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $UpdateStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo errorInfo
});


$ErrorInfoCopyWith<$Res> get errorInfo;

}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of UpdateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<$Res> get errorInfo {
  
  return $ErrorInfoCopyWith<$Res>(_self.errorInfo, (value) {
    return _then(_self.copyWith(errorInfo: value));
  });
}
}

// dart format on
