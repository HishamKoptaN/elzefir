// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersFilterModel {

 String? get searchQuery; DateTime? get fromDate; DateTime? get toDate; List<int> get unifiedValueIds; OrderStatusEntity? get selectedStatus; ProductModel? get product;
/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersFilterModelCopyWith<OrdersFilterModel> get copyWith => _$OrdersFilterModelCopyWithImpl<OrdersFilterModel>(this as OrdersFilterModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersFilterModel&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&const DeepCollectionEquality().equals(other.unifiedValueIds, unifiedValueIds)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,fromDate,toDate,const DeepCollectionEquality().hash(unifiedValueIds),selectedStatus,product);

@override
String toString() {
  return 'OrdersFilterModel(searchQuery: $searchQuery, fromDate: $fromDate, toDate: $toDate, unifiedValueIds: $unifiedValueIds, selectedStatus: $selectedStatus, product: $product)';
}


}

/// @nodoc
abstract mixin class $OrdersFilterModelCopyWith<$Res>  {
  factory $OrdersFilterModelCopyWith(OrdersFilterModel value, $Res Function(OrdersFilterModel) _then) = _$OrdersFilterModelCopyWithImpl;
@useResult
$Res call({
 String? searchQuery, DateTime? fromDate, DateTime? toDate, List<int> unifiedValueIds, OrderStatusEntity? selectedStatus, ProductModel? product
});


$OrderStatusEntityCopyWith<$Res>? get selectedStatus;$ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class _$OrdersFilterModelCopyWithImpl<$Res>
    implements $OrdersFilterModelCopyWith<$Res> {
  _$OrdersFilterModelCopyWithImpl(this._self, this._then);

  final OrdersFilterModel _self;
  final $Res Function(OrdersFilterModel) _then;

/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchQuery = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? unifiedValueIds = null,Object? selectedStatus = freezed,Object? product = freezed,}) {
  return _then(_self.copyWith(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,unifiedValueIds: null == unifiedValueIds ? _self.unifiedValueIds : unifiedValueIds // ignore: cast_nullable_to_non_nullable
as List<int>,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusEntity?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,
  ));
}
/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<$Res>? get selectedStatus {
    if (_self.selectedStatus == null) {
    return null;
  }

  return $OrderStatusEntityCopyWith<$Res>(_self.selectedStatus!, (value) {
    return _then(_self.copyWith(selectedStatus: value));
  });
}/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrdersFilterModel].
extension OrdersFilterModelPatterns on OrdersFilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersFilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersFilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersFilterModel value)  $default,){
final _that = this;
switch (_that) {
case _OrdersFilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersFilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersFilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? searchQuery,  DateTime? fromDate,  DateTime? toDate,  List<int> unifiedValueIds,  OrderStatusEntity? selectedStatus,  ProductModel? product)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersFilterModel() when $default != null:
return $default(_that.searchQuery,_that.fromDate,_that.toDate,_that.unifiedValueIds,_that.selectedStatus,_that.product);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? searchQuery,  DateTime? fromDate,  DateTime? toDate,  List<int> unifiedValueIds,  OrderStatusEntity? selectedStatus,  ProductModel? product)  $default,) {final _that = this;
switch (_that) {
case _OrdersFilterModel():
return $default(_that.searchQuery,_that.fromDate,_that.toDate,_that.unifiedValueIds,_that.selectedStatus,_that.product);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? searchQuery,  DateTime? fromDate,  DateTime? toDate,  List<int> unifiedValueIds,  OrderStatusEntity? selectedStatus,  ProductModel? product)?  $default,) {final _that = this;
switch (_that) {
case _OrdersFilterModel() when $default != null:
return $default(_that.searchQuery,_that.fromDate,_that.toDate,_that.unifiedValueIds,_that.selectedStatus,_that.product);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersFilterModel extends OrdersFilterModel {
  const _OrdersFilterModel({this.searchQuery, this.fromDate, this.toDate, final  List<int> unifiedValueIds = const [], this.selectedStatus, this.product}): _unifiedValueIds = unifiedValueIds,super._();
  

@override final  String? searchQuery;
@override final  DateTime? fromDate;
@override final  DateTime? toDate;
 final  List<int> _unifiedValueIds;
@override@JsonKey() List<int> get unifiedValueIds {
  if (_unifiedValueIds is EqualUnmodifiableListView) return _unifiedValueIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_unifiedValueIds);
}

@override final  OrderStatusEntity? selectedStatus;
@override final  ProductModel? product;

/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersFilterModelCopyWith<_OrdersFilterModel> get copyWith => __$OrdersFilterModelCopyWithImpl<_OrdersFilterModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersFilterModel&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.fromDate, fromDate) || other.fromDate == fromDate)&&(identical(other.toDate, toDate) || other.toDate == toDate)&&const DeepCollectionEquality().equals(other._unifiedValueIds, _unifiedValueIds)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&(identical(other.product, product) || other.product == product));
}


@override
int get hashCode => Object.hash(runtimeType,searchQuery,fromDate,toDate,const DeepCollectionEquality().hash(_unifiedValueIds),selectedStatus,product);

@override
String toString() {
  return 'OrdersFilterModel(searchQuery: $searchQuery, fromDate: $fromDate, toDate: $toDate, unifiedValueIds: $unifiedValueIds, selectedStatus: $selectedStatus, product: $product)';
}


}

/// @nodoc
abstract mixin class _$OrdersFilterModelCopyWith<$Res> implements $OrdersFilterModelCopyWith<$Res> {
  factory _$OrdersFilterModelCopyWith(_OrdersFilterModel value, $Res Function(_OrdersFilterModel) _then) = __$OrdersFilterModelCopyWithImpl;
@override @useResult
$Res call({
 String? searchQuery, DateTime? fromDate, DateTime? toDate, List<int> unifiedValueIds, OrderStatusEntity? selectedStatus, ProductModel? product
});


@override $OrderStatusEntityCopyWith<$Res>? get selectedStatus;@override $ProductModelCopyWith<$Res>? get product;

}
/// @nodoc
class __$OrdersFilterModelCopyWithImpl<$Res>
    implements _$OrdersFilterModelCopyWith<$Res> {
  __$OrdersFilterModelCopyWithImpl(this._self, this._then);

  final _OrdersFilterModel _self;
  final $Res Function(_OrdersFilterModel) _then;

/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchQuery = freezed,Object? fromDate = freezed,Object? toDate = freezed,Object? unifiedValueIds = null,Object? selectedStatus = freezed,Object? product = freezed,}) {
  return _then(_OrdersFilterModel(
searchQuery: freezed == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String?,fromDate: freezed == fromDate ? _self.fromDate : fromDate // ignore: cast_nullable_to_non_nullable
as DateTime?,toDate: freezed == toDate ? _self.toDate : toDate // ignore: cast_nullable_to_non_nullable
as DateTime?,unifiedValueIds: null == unifiedValueIds ? _self._unifiedValueIds : unifiedValueIds // ignore: cast_nullable_to_non_nullable
as List<int>,selectedStatus: freezed == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusEntity?,product: freezed == product ? _self.product : product // ignore: cast_nullable_to_non_nullable
as ProductModel?,
  ));
}

/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<$Res>? get selectedStatus {
    if (_self.selectedStatus == null) {
    return null;
  }

  return $OrderStatusEntityCopyWith<$Res>(_self.selectedStatus!, (value) {
    return _then(_self.copyWith(selectedStatus: value));
  });
}/// Create a copy of OrdersFilterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductModelCopyWith<$Res>? get product {
    if (_self.product == null) {
    return null;
  }

  return $ProductModelCopyWith<$Res>(_self.product!, (value) {
    return _then(_self.copyWith(product: value));
  });
}
}

// dart format on
