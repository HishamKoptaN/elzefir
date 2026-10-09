// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersEvent()';
}


}

/// @nodoc
class $OrdersEventCopyWith<$Res>  {
$OrdersEventCopyWith(OrdersEvent _, $Res Function(OrdersEvent) __);
}


/// Adds pattern-matching-related methods to [OrdersEvent].
extension OrdersEventPatterns on OrdersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Get value)?  get,TResult Function( _Filter value)?  filter,TResult Function( _UpdateOrderLink value)?  updateOrderLink,TResult Function( _ToggleUnit value)?  toggleUnit,TResult Function( _updateUnit value)?  updateUnit,TResult Function( _ToggleSelectAll value)?  toggleSelectAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _Filter() when filter != null:
return filter(_that);case _UpdateOrderLink() when updateOrderLink != null:
return updateOrderLink(_that);case _ToggleUnit() when toggleUnit != null:
return toggleUnit(_that);case _updateUnit() when updateUnit != null:
return updateUnit(_that);case _ToggleSelectAll() when toggleSelectAll != null:
return toggleSelectAll(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Get value)  get,required TResult Function( _Filter value)  filter,required TResult Function( _UpdateOrderLink value)  updateOrderLink,required TResult Function( _ToggleUnit value)  toggleUnit,required TResult Function( _updateUnit value)  updateUnit,required TResult Function( _ToggleSelectAll value)  toggleSelectAll,}){
final _that = this;
switch (_that) {
case _Get():
return get(_that);case _Filter():
return filter(_that);case _UpdateOrderLink():
return updateOrderLink(_that);case _ToggleUnit():
return toggleUnit(_that);case _updateUnit():
return updateUnit(_that);case _ToggleSelectAll():
return toggleSelectAll(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Get value)?  get,TResult? Function( _Filter value)?  filter,TResult? Function( _UpdateOrderLink value)?  updateOrderLink,TResult? Function( _ToggleUnit value)?  toggleUnit,TResult? Function( _updateUnit value)?  updateUnit,TResult? Function( _ToggleSelectAll value)?  toggleSelectAll,}){
final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that);case _Filter() when filter != null:
return filter(_that);case _UpdateOrderLink() when updateOrderLink != null:
return updateOrderLink(_that);case _ToggleUnit() when toggleUnit != null:
return toggleUnit(_that);case _updateUnit() when updateUnit != null:
return updateUnit(_that);case _ToggleSelectAll() when toggleSelectAll != null:
return toggleSelectAll(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int? page,  int perPage)?  get,TResult Function( OrdersFilterModel ordersFilter,  int perPage)?  filter,TResult Function( String orderId,  String orderItemId,  String unitId,  String documentationLink)?  updateOrderLink,TResult Function( String orderId,  String orderItemId,  String unitId,  bool isSelected)?  toggleUnit,TResult Function( String orderId,  String orderItemId,  String unitId)?  updateUnit,TResult Function( bool v)?  toggleSelectAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that.page,_that.perPage);case _Filter() when filter != null:
return filter(_that.ordersFilter,_that.perPage);case _UpdateOrderLink() when updateOrderLink != null:
return updateOrderLink(_that.orderId,_that.orderItemId,_that.unitId,_that.documentationLink);case _ToggleUnit() when toggleUnit != null:
return toggleUnit(_that.orderId,_that.orderItemId,_that.unitId,_that.isSelected);case _updateUnit() when updateUnit != null:
return updateUnit(_that.orderId,_that.orderItemId,_that.unitId);case _ToggleSelectAll() when toggleSelectAll != null:
return toggleSelectAll(_that.v);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int? page,  int perPage)  get,required TResult Function( OrdersFilterModel ordersFilter,  int perPage)  filter,required TResult Function( String orderId,  String orderItemId,  String unitId,  String documentationLink)  updateOrderLink,required TResult Function( String orderId,  String orderItemId,  String unitId,  bool isSelected)  toggleUnit,required TResult Function( String orderId,  String orderItemId,  String unitId)  updateUnit,required TResult Function( bool v)  toggleSelectAll,}) {final _that = this;
switch (_that) {
case _Get():
return get(_that.page,_that.perPage);case _Filter():
return filter(_that.ordersFilter,_that.perPage);case _UpdateOrderLink():
return updateOrderLink(_that.orderId,_that.orderItemId,_that.unitId,_that.documentationLink);case _ToggleUnit():
return toggleUnit(_that.orderId,_that.orderItemId,_that.unitId,_that.isSelected);case _updateUnit():
return updateUnit(_that.orderId,_that.orderItemId,_that.unitId);case _ToggleSelectAll():
return toggleSelectAll(_that.v);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int? page,  int perPage)?  get,TResult? Function( OrdersFilterModel ordersFilter,  int perPage)?  filter,TResult? Function( String orderId,  String orderItemId,  String unitId,  String documentationLink)?  updateOrderLink,TResult? Function( String orderId,  String orderItemId,  String unitId,  bool isSelected)?  toggleUnit,TResult? Function( String orderId,  String orderItemId,  String unitId)?  updateUnit,TResult? Function( bool v)?  toggleSelectAll,}) {final _that = this;
switch (_that) {
case _Get() when get != null:
return get(_that.page,_that.perPage);case _Filter() when filter != null:
return filter(_that.ordersFilter,_that.perPage);case _UpdateOrderLink() when updateOrderLink != null:
return updateOrderLink(_that.orderId,_that.orderItemId,_that.unitId,_that.documentationLink);case _ToggleUnit() when toggleUnit != null:
return toggleUnit(_that.orderId,_that.orderItemId,_that.unitId,_that.isSelected);case _updateUnit() when updateUnit != null:
return updateUnit(_that.orderId,_that.orderItemId,_that.unitId);case _ToggleSelectAll() when toggleSelectAll != null:
return toggleSelectAll(_that.v);case _:
  return null;

}
}

}

/// @nodoc


class _Get implements OrdersEvent {
  const _Get({required this.page, required this.perPage});
  

 final  int? page;
 final  int perPage;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCopyWith<_Get> get copyWith => __$GetCopyWithImpl<_Get>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Get&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,page,perPage);

@override
String toString() {
  return 'OrdersEvent.get(page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$GetCopyWith(_Get value, $Res Function(_Get) _then) = __$GetCopyWithImpl;
@useResult
$Res call({
 int? page, int perPage
});




}
/// @nodoc
class __$GetCopyWithImpl<$Res>
    implements _$GetCopyWith<$Res> {
  __$GetCopyWithImpl(this._self, this._then);

  final _Get _self;
  final $Res Function(_Get) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? page = freezed,Object? perPage = null,}) {
  return _then(_Get(
page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _Filter implements OrdersEvent {
  const _Filter({required this.ordersFilter, required this.perPage});
  

 final  OrdersFilterModel ordersFilter;
 final  int perPage;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterCopyWith<_Filter> get copyWith => __$FilterCopyWithImpl<_Filter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Filter&&(identical(other.ordersFilter, ordersFilter) || other.ordersFilter == ordersFilter)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode => Object.hash(runtimeType,ordersFilter,perPage);

@override
String toString() {
  return 'OrdersEvent.filter(ordersFilter: $ordersFilter, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$FilterCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) _then) = __$FilterCopyWithImpl;
@useResult
$Res call({
 OrdersFilterModel ordersFilter, int perPage
});


$OrdersFilterModelCopyWith<$Res> get ordersFilter;

}
/// @nodoc
class __$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(this._self, this._then);

  final _Filter _self;
  final $Res Function(_Filter) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ordersFilter = null,Object? perPage = null,}) {
  return _then(_Filter(
ordersFilter: null == ordersFilter ? _self.ordersFilter : ordersFilter // ignore: cast_nullable_to_non_nullable
as OrdersFilterModel,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrdersFilterModelCopyWith<$Res> get ordersFilter {
  
  return $OrdersFilterModelCopyWith<$Res>(_self.ordersFilter, (value) {
    return _then(_self.copyWith(ordersFilter: value));
  });
}
}

/// @nodoc


class _UpdateOrderLink implements OrdersEvent {
  const _UpdateOrderLink({required this.orderId, required this.orderItemId, required this.unitId, required this.documentationLink});
  

 final  String orderId;
 final  String orderItemId;
 final  String unitId;
 final  String documentationLink;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateOrderLinkCopyWith<_UpdateOrderLink> get copyWith => __$UpdateOrderLinkCopyWithImpl<_UpdateOrderLink>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateOrderLink&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.documentationLink, documentationLink) || other.documentationLink == documentationLink));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,orderItemId,unitId,documentationLink);

@override
String toString() {
  return 'OrdersEvent.updateOrderLink(orderId: $orderId, orderItemId: $orderItemId, unitId: $unitId, documentationLink: $documentationLink)';
}


}

/// @nodoc
abstract mixin class _$UpdateOrderLinkCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$UpdateOrderLinkCopyWith(_UpdateOrderLink value, $Res Function(_UpdateOrderLink) _then) = __$UpdateOrderLinkCopyWithImpl;
@useResult
$Res call({
 String orderId, String orderItemId, String unitId, String documentationLink
});




}
/// @nodoc
class __$UpdateOrderLinkCopyWithImpl<$Res>
    implements _$UpdateOrderLinkCopyWith<$Res> {
  __$UpdateOrderLinkCopyWithImpl(this._self, this._then);

  final _UpdateOrderLink _self;
  final $Res Function(_UpdateOrderLink) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? orderItemId = null,Object? unitId = null,Object? documentationLink = null,}) {
  return _then(_UpdateOrderLink(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderItemId: null == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,documentationLink: null == documentationLink ? _self.documentationLink : documentationLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleUnit implements OrdersEvent {
  const _ToggleUnit({required this.orderId, required this.orderItemId, required this.unitId, required this.isSelected});
  

 final  String orderId;
 final  String orderItemId;
 final  String unitId;
 final  bool isSelected;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleUnitCopyWith<_ToggleUnit> get copyWith => __$ToggleUnitCopyWithImpl<_ToggleUnit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleUnit&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,orderItemId,unitId,isSelected);

@override
String toString() {
  return 'OrdersEvent.toggleUnit(orderId: $orderId, orderItemId: $orderItemId, unitId: $unitId, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$ToggleUnitCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$ToggleUnitCopyWith(_ToggleUnit value, $Res Function(_ToggleUnit) _then) = __$ToggleUnitCopyWithImpl;
@useResult
$Res call({
 String orderId, String orderItemId, String unitId, bool isSelected
});




}
/// @nodoc
class __$ToggleUnitCopyWithImpl<$Res>
    implements _$ToggleUnitCopyWith<$Res> {
  __$ToggleUnitCopyWithImpl(this._self, this._then);

  final _ToggleUnit _self;
  final $Res Function(_ToggleUnit) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? orderItemId = null,Object? unitId = null,Object? isSelected = null,}) {
  return _then(_ToggleUnit(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderItemId: null == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _updateUnit implements OrdersEvent {
  const _updateUnit({required this.orderId, required this.orderItemId, required this.unitId});
  

 final  String orderId;
 final  String orderItemId;
 final  String unitId;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$updateUnitCopyWith<_updateUnit> get copyWith => __$updateUnitCopyWithImpl<_updateUnit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _updateUnit&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderItemId, orderItemId) || other.orderItemId == orderItemId)&&(identical(other.unitId, unitId) || other.unitId == unitId));
}


@override
int get hashCode => Object.hash(runtimeType,orderId,orderItemId,unitId);

@override
String toString() {
  return 'OrdersEvent.updateUnit(orderId: $orderId, orderItemId: $orderItemId, unitId: $unitId)';
}


}

/// @nodoc
abstract mixin class _$updateUnitCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$updateUnitCopyWith(_updateUnit value, $Res Function(_updateUnit) _then) = __$updateUnitCopyWithImpl;
@useResult
$Res call({
 String orderId, String orderItemId, String unitId
});




}
/// @nodoc
class __$updateUnitCopyWithImpl<$Res>
    implements _$updateUnitCopyWith<$Res> {
  __$updateUnitCopyWithImpl(this._self, this._then);

  final _updateUnit _self;
  final $Res Function(_updateUnit) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? orderItemId = null,Object? unitId = null,}) {
  return _then(_updateUnit(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderItemId: null == orderItemId ? _self.orderItemId : orderItemId // ignore: cast_nullable_to_non_nullable
as String,unitId: null == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ToggleSelectAll implements OrdersEvent {
  const _ToggleSelectAll({required this.v});
  

 final  bool v;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ToggleSelectAllCopyWith<_ToggleSelectAll> get copyWith => __$ToggleSelectAllCopyWithImpl<_ToggleSelectAll>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ToggleSelectAll&&(identical(other.v, v) || other.v == v));
}


@override
int get hashCode => Object.hash(runtimeType,v);

@override
String toString() {
  return 'OrdersEvent.toggleSelectAll(v: $v)';
}


}

/// @nodoc
abstract mixin class _$ToggleSelectAllCopyWith<$Res> implements $OrdersEventCopyWith<$Res> {
  factory _$ToggleSelectAllCopyWith(_ToggleSelectAll value, $Res Function(_ToggleSelectAll) _then) = __$ToggleSelectAllCopyWithImpl;
@useResult
$Res call({
 bool v
});




}
/// @nodoc
class __$ToggleSelectAllCopyWithImpl<$Res>
    implements _$ToggleSelectAllCopyWith<$Res> {
  __$ToggleSelectAllCopyWithImpl(this._self, this._then);

  final _ToggleSelectAll _self;
  final $Res Function(_ToggleSelectAll) _then;

/// Create a copy of OrdersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? v = null,}) {
  return _then(_ToggleSelectAll(
v: null == v ? _self.v : v // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$OrdersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState()';
}


}

/// @nodoc
class $OrdersStateCopyWith<$Res>  {
$OrdersStateCopyWith(OrdersState _, $Res Function(OrdersState) __);
}


/// Adds pattern-matching-related methods to [OrdersState].
extension OrdersStatePatterns on OrdersState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( List<OrderEntity>? orders,  MetaEntity? meta,  bool? isSearching,  OrdersFilterModel? ordersFilter,  bool selectAll,  int? selectedCount)?  loaded,TResult Function()?  orderShare,TResult Function( ErrorInfo apiErrorModel)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.orders,_that.meta,_that.isSearching,_that.ordersFilter,_that.selectAll,_that.selectedCount);case _OrderShare() when orderShare != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( List<OrderEntity>? orders,  MetaEntity? meta,  bool? isSearching,  OrdersFilterModel? ordersFilter,  bool selectAll,  int? selectedCount)  loaded,required TResult Function()  orderShare,required TResult Function( ErrorInfo apiErrorModel)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Success():
return success();case _Loaded():
return loaded(_that.orders,_that.meta,_that.isSearching,_that.ordersFilter,_that.selectAll,_that.selectedCount);case _OrderShare():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( List<OrderEntity>? orders,  MetaEntity? meta,  bool? isSearching,  OrdersFilterModel? ordersFilter,  bool selectAll,  int? selectedCount)?  loaded,TResult? Function()?  orderShare,TResult? Function( ErrorInfo apiErrorModel)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Loaded() when loaded != null:
return loaded(_that.orders,_that.meta,_that.isSearching,_that.ordersFilter,_that.selectAll,_that.selectedCount);case _OrderShare() when orderShare != null:
return orderShare();case _Failure() when failure != null:
return failure(_that.apiErrorModel);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements OrdersState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.initial()';
}


}




/// @nodoc


class _Loading implements OrdersState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.loading()';
}


}




/// @nodoc


class _Success implements OrdersState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.success()';
}


}




/// @nodoc


class _Loaded implements OrdersState {
  const _Loaded({  List<OrderEntity>? orders, this.meta, this.isSearching, this.ordersFilter, this.selectAll = true, this.selectedCount = null}): _orders = orders;
  

 final  List<OrderEntity>? _orders;
 List<OrderEntity>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  MetaEntity? meta;
 final  bool? isSearching;
 final  OrdersFilterModel? ordersFilter;
@JsonKey() final  bool selectAll;
@JsonKey() final  int? selectedCount;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.ordersFilter, ordersFilter) || other.ordersFilter == ordersFilter)&&(identical(other.selectAll, selectAll) || other.selectAll == selectAll)&&(identical(other.selectedCount, selectedCount) || other.selectedCount == selectedCount));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta,isSearching,ordersFilter,selectAll,selectedCount);

@override
String toString() {
  return 'OrdersState.loaded(orders: $orders, meta: $meta, isSearching: $isSearching, ordersFilter: $ordersFilter, selectAll: $selectAll, selectedCount: $selectedCount)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<OrderEntity>? orders, MetaEntity? meta, bool? isSearching, OrdersFilterModel? ordersFilter, bool selectAll, int? selectedCount
});


$OrdersFilterModelCopyWith<$Res>? get ordersFilter;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? orders = freezed,Object? meta = freezed,Object? isSearching = freezed,Object? ordersFilter = freezed,Object? selectAll = null,Object? selectedCount = freezed,}) {
  return _then(_Loaded(
orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,isSearching: freezed == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool?,ordersFilter: freezed == ordersFilter ? _self.ordersFilter : ordersFilter // ignore: cast_nullable_to_non_nullable
as OrdersFilterModel?,selectAll: null == selectAll ? _self.selectAll : selectAll // ignore: cast_nullable_to_non_nullable
as bool,selectedCount: freezed == selectedCount ? _self.selectedCount : selectedCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrdersFilterModelCopyWith<$Res>? get ordersFilter {
    if (_self.ordersFilter == null) {
    return null;
  }

  return $OrdersFilterModelCopyWith<$Res>(_self.ordersFilter!, (value) {
    return _then(_self.copyWith(ordersFilter: value));
  });
}
}

/// @nodoc


class _OrderShare implements OrdersState {
  const _OrderShare();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderShare);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OrdersState.orderShare()';
}


}




/// @nodoc


class _Failure implements OrdersState {
  const _Failure({required this.apiErrorModel});
  

 final  ErrorInfo apiErrorModel;

/// Create a copy of OrdersState
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
  return 'OrdersState.failure(apiErrorModel: $apiErrorModel)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $OrdersStateCopyWith<$Res> {
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

/// Create a copy of OrdersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorModel = null,}) {
  return _then(_Failure(
apiErrorModel: null == apiErrorModel ? _self.apiErrorModel : apiErrorModel // ignore: cast_nullable_to_non_nullable
as ErrorInfo,
  ));
}

/// Create a copy of OrdersState
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
