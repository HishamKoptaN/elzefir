// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DateEvent {

 DateTime? get fromDate; DateTime? get toDate; DateTime? get resyncFromDate;
/// Create a copy of DateEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateEventCopyWith<DateEvent> get copyWith => _$DateEventCopyWithImpl<DateEvent>(this as DateEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateEvent&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.resyncFromDate, resyncFromDate) || other.resyncFromDate == resyncFromDate));
}


@override
int get hashCode => Object.hash(runtimeType,fromDate,toDate,resyncFromDate);

@override
String toString() {
  return 'DateEvent(fromDate: $fromDate, toDate: $toDate, resyncFromDate: $resyncFromDate)';
}


}

/// @nodoc
abstract mixin class $DateEventCopyWith<$Res>  {
  factory $DateEventCopyWith(DateEvent value, $Res Function(DateEvent) _then) = _$DateEventCopyWithImpl;
@useResult
$Res call({
 DateTime? fromDate, DateTime? toDate, DateTime? resyncFromDate
});




}
/// @nodoc
class _$DateEventCopyWithImpl<$Res>
    implements $DateEventCopyWith<$Res> {
  _$DateEventCopyWithImpl(this._self, this._then);

  final DateEvent _self;
  final $Res Function(DateEvent) _then;

/// Create a copy of DateEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromDate = freezed,Object? toDate = freezed,Object? resyncFromDate = freezed,}) {
  return _then(_self.copyWith(
fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,resyncFromDate: freezed == resyncFromDate ? _self.resyncFromDate : resyncFromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DateEvent].
extension DateEventPatterns on DateEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DateRangeChanged value)?  dateRangeChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DateRangeChanged() when dateRangeChanged != null:
return dateRangeChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DateRangeChanged value)  dateRangeChanged,}){
final _that = this;
switch (_that) {
case _DateRangeChanged():
return dateRangeChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DateRangeChanged value)?  dateRangeChanged,}){
final _that = this;
switch (_that) {
case _DateRangeChanged() when dateRangeChanged != null:
return dateRangeChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DateTime? fromDate,  DateTime? toDate,  DateTime? resyncFromDate)?  dateRangeChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DateRangeChanged() when dateRangeChanged != null:
return dateRangeChanged(_that.fromDate,_that.toDate,_that.resyncFromDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DateTime? fromDate,  DateTime? toDate,  DateTime? resyncFromDate)  dateRangeChanged,}) {final _that = this;
switch (_that) {
case _DateRangeChanged():
return dateRangeChanged(_that.fromDate,_that.toDate,_that.resyncFromDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DateTime? fromDate,  DateTime? toDate,  DateTime? resyncFromDate)?  dateRangeChanged,}) {final _that = this;
switch (_that) {
case _DateRangeChanged() when dateRangeChanged != null:
return dateRangeChanged(_that.fromDate,_that.toDate,_that.resyncFromDate);case _:
  return null;

}
}

}

/// @nodoc


class _DateRangeChanged implements DateEvent {
  const _DateRangeChanged({this.fromDate, this.toDate, this.resyncFromDate});
  

@override final  DateTime? fromDate;
@override final  DateTime? toDate;
@override final  DateTime? resyncFromDate;

/// Create a copy of DateEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DateRangeChangedCopyWith<_DateRangeChanged> get copyWith => __$DateRangeChangedCopyWithImpl<_DateRangeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DateRangeChanged&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.resyncFromDate, resyncFromDate) || other.resyncFromDate == resyncFromDate));
}


@override
int get hashCode => Object.hash(runtimeType,fromDate,toDate,resyncFromDate);

@override
String toString() {
  return 'DateEvent.dateRangeChanged(fromDate: $fromDate, toDate: $toDate, resyncFromDate: $resyncFromDate)';
}


}

/// @nodoc
abstract mixin class _$DateRangeChangedCopyWith<$Res> implements $DateEventCopyWith<$Res> {
  factory _$DateRangeChangedCopyWith(_DateRangeChanged value, $Res Function(_DateRangeChanged) _then) = __$DateRangeChangedCopyWithImpl;
@override @useResult
$Res call({
 DateTime? fromDate, DateTime? toDate, DateTime? resyncFromDate
});




}
/// @nodoc
class __$DateRangeChangedCopyWithImpl<$Res>
    implements _$DateRangeChangedCopyWith<$Res> {
  __$DateRangeChangedCopyWithImpl(this._self, this._then);

  final _DateRangeChanged _self;
  final $Res Function(_DateRangeChanged) _then;

/// Create a copy of DateEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromDate = freezed,Object? toDate = freezed,Object? resyncFromDate = freezed,}) {
  return _then(_DateRangeChanged(
fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,resyncFromDate: freezed == resyncFromDate ? _self.resyncFromDate : resyncFromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$DateState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DateState()';
}


}

/// @nodoc
class $DateStateCopyWith<$Res>  {
$DateStateCopyWith(DateState _, $Res Function(DateState) __);
}


/// Adds pattern-matching-related methods to [DateState].
extension DateStatePatterns on DateState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Loaded value)?  loaded,TResult Function( _OrderShare value)?  orderShare,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
return loaded(_that);case _OrderShare() when orderShare != null:
return orderShare(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Loaded value)  loaded,required TResult Function( _OrderShare value)  orderShare,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Loaded():
return loaded(_that);case _OrderShare():
return orderShare(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Loaded value)?  loaded,TResult? Function( _OrderShare value)?  orderShare,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
return loaded(_that);case _OrderShare() when orderShare != null:
return orderShare(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( DateTime? fromDate,  DateTime? toDate,  TimePeriod? fromTimePeriod,  TimePeriod? toTimePeriod,  DateTime? resyncFromDate)?  loaded,TResult Function()?  orderShare,TResult Function( ErrorInfo apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.fromDate,_that.toDate,_that.fromTimePeriod,_that.toTimePeriod,_that.resyncFromDate);case _OrderShare() when orderShare != null:
return orderShare();case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( DateTime? fromDate,  DateTime? toDate,  TimePeriod? fromTimePeriod,  TimePeriod? toTimePeriod,  DateTime? resyncFromDate)  loaded,required TResult Function()  orderShare,required TResult Function( ErrorInfo apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success();case _Loaded():
return loaded(_that.fromDate,_that.toDate,_that.fromTimePeriod,_that.toTimePeriod,_that.resyncFromDate);case _OrderShare():
return orderShare();case _Failure():
return failure(_that.apiErrorModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( DateTime? fromDate,  DateTime? toDate,  TimePeriod? fromTimePeriod,  TimePeriod? toTimePeriod,  DateTime? resyncFromDate)?  loaded,TResult? Function()?  orderShare,TResult? Function( ErrorInfo apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.fromDate,_that.toDate,_that.fromTimePeriod,_that.toTimePeriod,_that.resyncFromDate);case _OrderShare() when orderShare != null:
return orderShare();case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements DateState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DateState.initial()';
}


}




/// @nodoc


class _Loading implements DateState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DateState.loading()';
}


}




/// @nodoc


class _Success implements DateState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DateState.success()';
}


}




/// @nodoc


class _Loaded implements DateState {
   _Loaded({this.fromDate, this.toDate, this.fromTimePeriod = TimePeriod.am, this.toTimePeriod = TimePeriod.pm, this.resyncFromDate});
  

 final  DateTime? fromDate;
 final  DateTime? toDate;
@JsonKey() final  TimePeriod? fromTimePeriod;
@JsonKey() final  TimePeriod? toTimePeriod;
 final  DateTime? resyncFromDate;

/// Create a copy of DateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&(identical(other.fromTimePeriod, fromTimePeriod) || other.fromTimePeriod == fromTimePeriod)&&(identical(other.toTimePeriod, toTimePeriod) || other.toTimePeriod == toTimePeriod)&&(identical(other.resyncFromDate, resyncFromDate) || other.resyncFromDate == resyncFromDate));
}


@override
int get hashCode => Object.hash(runtimeType,fromDate,toDate,fromTimePeriod,toTimePeriod,resyncFromDate);

@override
String toString() {
  return 'DateState.loaded(fromDate: $fromDate, toDate: $toDate, fromTimePeriod: $fromTimePeriod, toTimePeriod: $toTimePeriod, resyncFromDate: $resyncFromDate)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $DateStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 DateTime? fromDate, DateTime? toDate, TimePeriod? fromTimePeriod, TimePeriod? toTimePeriod, DateTime? resyncFromDate
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of DateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fromDate = freezed,Object? toDate = freezed,Object? fromTimePeriod = freezed,Object? toTimePeriod = freezed,Object? resyncFromDate = freezed,}) {
  return _then(_Loaded(
fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,fromTimePeriod: freezed == fromTimePeriod ? _self.fromTimePeriod : fromTimePeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod?,toTimePeriod: freezed == toTimePeriod ? _self.toTimePeriod : toTimePeriod // ignore: cast_nullable_to_non_nullable
as TimePeriod?,resyncFromDate: freezed == resyncFromDate ? _self.resyncFromDate : resyncFromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class _OrderShare implements DateState {
  const _OrderShare();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderShare);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DateState.orderShare()';
}


}




/// @nodoc


class _Failure implements DateState {
  const _Failure({required this.apiErrorModel});
  

 final  ErrorInfo apiErrorModel;

/// Create a copy of DateState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorModel);

@override
String toString() {
  return 'DateState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $DateStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 ErrorInfo apiErrorModel
});


$ErrorInfoCopyWith<$Res> get apiErrorModel;

}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of DateState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of DateState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ErrorInfoCopyWith<$Res> get apiErrorModel {
  
  return $ErrorInfoCopyWith<$Res>(_self.apiErrorModel, (value) {
    return _then(_self.copyWith(apiErrorModel: value));
  });
}
}

// dart format on
