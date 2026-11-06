// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_items_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderItemsEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderItemsEvent()';
}


}

/// @nodoc
class $OrderItemsEventCopyWith<$Res>  {
$OrderItemsEventCopyWith(OrderItemsEvent _, $Res Function(OrderItemsEvent) __);
}


/// Adds pattern-matching-related methods to [OrderItemsEvent].
extension OrderItemsEventPatterns on OrderItemsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DataChanged value)?  dataChanged,TResult Function( _UpdateItem value)?  updateItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _UpdateItem() when updateItem != null:
return updateItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DataChanged value)  dataChanged,required TResult Function( _UpdateItem value)  updateItem,}){
final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that);case _UpdateItem():
return updateItem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DataChanged value)?  dataChanged,TResult? Function( _UpdateItem value)?  updateItem,}){
final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that);case _UpdateItem() when updateItem != null:
return updateItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UpdateUnitEntity updateOrderItem)?  dataChanged,TResult Function()?  updateItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.updateOrderItem);case _UpdateItem() when updateItem != null:
return updateItem();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UpdateUnitEntity updateOrderItem)  dataChanged,required TResult Function()  updateItem,}) {final _that = this;
switch (_that) {
case _DataChanged():
return dataChanged(_that.updateOrderItem);case _UpdateItem():
return updateItem();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UpdateUnitEntity updateOrderItem)?  dataChanged,TResult? Function()?  updateItem,}) {final _that = this;
switch (_that) {
case _DataChanged() when dataChanged != null:
return dataChanged(_that.updateOrderItem);case _UpdateItem() when updateItem != null:
return updateItem();case _:
  return null;

}
}

}

/// @nodoc


class _DataChanged implements OrderItemsEvent {
  const _DataChanged({required this.updateOrderItem});
  

 final  UpdateUnitEntity updateOrderItem;

/// Create a copy of OrderItemsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataChangedCopyWith<_DataChanged> get copyWith => __$DataChangedCopyWithImpl<_DataChanged>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataChanged&&(identical(other.updateOrderItem, updateOrderItem) || other.updateOrderItem == updateOrderItem));
}


@override
int get hashCode {
    return Object.hash(runtimeType,updateOrderItem);
}

@override
String toString() {
    return 'OrderItemsEvent.dataChanged(updateOrderItem: $updateOrderItem)';
}


}

/// @nodoc
abstract mixin class _$DataChangedCopyWith<$Res> implements $OrderItemsEventCopyWith<$Res> {
  factory _$DataChangedCopyWith(_DataChanged value, $Res Function(_DataChanged) _then) = __$DataChangedCopyWithImpl;
@useResult
$Res call({
 UpdateUnitEntity updateOrderItem
});


$UpdateUnitEntityCopyWith<$Res> get updateOrderItem;

}
/// @nodoc
class __$DataChangedCopyWithImpl<$Res>
    implements _$DataChangedCopyWith<$Res> {
  __$DataChangedCopyWithImpl(this._self, this._then);

  final _DataChanged _self;
  final $Res Function(_DataChanged) _then;

/// Create a copy of OrderItemsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateOrderItem = null,}) {
  return _then(_DataChanged(
updateOrderItem: null == updateOrderItem ? _self.updateOrderItem : updateOrderItem // ignore: cast_nullable_to_non_nullable
as UpdateUnitEntity,
  ));
}

/// Create a copy of OrderItemsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateUnitEntityCopyWith<$Res> get updateOrderItem {
  
  return $UpdateUnitEntityCopyWith<$Res>(_self.updateOrderItem, (value) {
    return _then(_self.copyWith(updateOrderItem: value));
  });
}
}

/// @nodoc


class _UpdateItem implements OrderItemsEvent {
  const _UpdateItem();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateItem);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderItemsEvent.updateItem()';
}


}




/// @nodoc
mixin _$OrderItemsState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderItemsState()';
}


}

/// @nodoc
class $OrderItemsStateCopyWith<$Res>  {
$OrderItemsStateCopyWith(OrderItemsState _, $Res Function(OrderItemsState) __);
}


/// Adds pattern-matching-related methods to [OrderItemsState].
extension OrderItemsStatePatterns on OrderItemsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Loaded value)?  loaded,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Loaded value)  loaded,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Success():
return success(_that);case _Loaded():
return loaded(_that);case _Failure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Failure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( UpdateUnitEntity? updateUnit,  bool? isLoading)?  loaded,TResult Function( ErrorInfo apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.updateUnit,_that.isLoading);case _Failure() when failure != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( UpdateUnitEntity? updateUnit,  bool? isLoading)  loaded,required TResult Function( ErrorInfo apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success();case _Loaded():
return loaded(_that.updateUnit,_that.isLoading);case _Failure():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( UpdateUnitEntity? updateUnit,  bool? isLoading)?  loaded,TResult? Function( ErrorInfo apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.updateUnit,_that.isLoading);case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OrderItemsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderItemsState.initial()';
}


}




/// @nodoc


class _Loading implements OrderItemsState {
  const _Loading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderItemsState.loading()';
}


}




/// @nodoc


class _Success implements OrderItemsState {
  const _Success();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OrderItemsState.success()';
}


}




/// @nodoc


class _Loaded implements OrderItemsState {
  const _Loaded({this.updateUnit, this.isLoading});
  

 final  UpdateUnitEntity? updateUnit;
 final  bool? isLoading;

/// Create a copy of OrderItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.updateUnit, updateUnit) || other.updateUnit == updateUnit)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode {
    return Object.hash(runtimeType,updateUnit,isLoading);
}

@override
String toString() {
    return 'OrderItemsState.loaded(updateUnit: $updateUnit, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $OrderItemsStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 UpdateUnitEntity? updateUnit, bool? isLoading
});


$UpdateUnitEntityCopyWith<$Res>? get updateUnit;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of OrderItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? updateUnit = freezed,Object? isLoading = freezed,}) {
  return _then(_Loaded(
updateUnit: freezed == updateUnit ? _self.updateUnit : updateUnit // ignore: cast_nullable_to_non_nullable
as UpdateUnitEntity?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of OrderItemsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdateUnitEntityCopyWith<$Res>? get updateUnit {
    if (_self.updateUnit == null) {
    return null;
  }

  return $UpdateUnitEntityCopyWith<$Res>(_self.updateUnit!, (value) {
    return _then(_self.copyWith(updateUnit: value));
  });
}
}

/// @nodoc


class _Failure implements OrderItemsState {
  const _Failure({required this.apiErrorModel});
  

 final  ErrorInfo apiErrorModel;

/// Create a copy of OrderItemsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.apiErrorModel, apiErrorModel) || other.apiErrorModel == apiErrorModel));
}


@override
int get hashCode {
    return Object.hash(runtimeType,apiErrorModel);
}

@override
String toString() {
    return 'OrderItemsState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $OrderItemsStateCopyWith<$Res> {
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

/// Create a copy of OrderItemsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of OrderItemsState
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
