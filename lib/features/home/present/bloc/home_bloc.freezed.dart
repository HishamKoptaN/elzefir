// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Get value)?  get,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Get value)  get,}){
final _that = this;
switch (_that) {
case _Get():
return get(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Get value)?  get,}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  get,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  get,}) {final _that = this;
switch (_that) {
case _Get():
return get();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  get,}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get();case _:
  return null;

}
}

}

/// @nodoc


class _Get implements HomeEvent {
  const _Get();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Get);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.get()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loaded value)?  loaded,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loaded value)  loaded,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loaded():
return loaded(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( HomeResEntity? homeRes,  bool? loading)?  loaded,TResult Function()?  loading,TResult Function()?  success,TResult Function( ErrorInfo errorInfo)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.homeRes,_that.loading);case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( HomeResEntity? homeRes,  bool? loading)  loaded,required TResult Function()  loading,required TResult Function()  success,required TResult Function( ErrorInfo errorInfo)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loaded():
return loaded(_that.homeRes,_that.loading);case _Loading():
return loading();case _Success():
return success();case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( HomeResEntity? homeRes,  bool? loading)?  loaded,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( ErrorInfo errorInfo)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loaded() when loaded != null:
return loaded(_that.homeRes,_that.loading);case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Failure() when failure != null:
return failure(_that.errorInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class _Loaded implements HomeState {
  const _Loaded({this.homeRes, this.loading});
  

 final  HomeResEntity? homeRes;
 final  bool? loading;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.homeRes, homeRes) || other.homeRes == homeRes)&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,homeRes,loading);

@override
String toString() {
  return 'HomeState.loaded(homeRes: $homeRes, loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 HomeResEntity? homeRes, bool? loading
});


$HomeResEntityCopyWith<$Res>? get homeRes;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? homeRes = freezed,Object? loading = freezed,}) {
  return _then(_Loaded(
homeRes: freezed == homeRes ? _self.homeRes : homeRes // ignore: cast_nullable_to_non_nullable
as HomeResEntity?,loading: freezed == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeResEntityCopyWith<$Res>? get homeRes {
    if (_self.homeRes == null) {
    return null;
  }

  return $HomeResEntityCopyWith<$Res>(_self.homeRes!, (value) {
    return _then(_self.copyWith(homeRes: value));
  });
}
}

/// @nodoc


class _Loading implements HomeState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class _Success implements HomeState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.success()';
}


}




/// @nodoc


class _Failure implements HomeState {
  const _Failure({required this.errorInfo});
  

 final  ErrorInfo errorInfo;

/// Create a copy of HomeState
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
  return 'HomeState.failure(errorInfo: $errorInfo)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
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

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorInfo = null,}) {
  return _then(_Failure(
errorInfo: null == errorInfo ? _self.errorInfo : errorInfo // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of HomeState
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
