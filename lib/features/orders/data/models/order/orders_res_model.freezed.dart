// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_res_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrdersResModel {

@JsonKey(name: "data") List<OrderModel>? get orders;@JsonKey(name: "meta") MetaModel? get meta;
/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResModelCopyWith<OrdersResModel> get copyWith => _$OrdersResModelCopyWithImpl<OrdersResModel>(this as OrdersResModel, _$identity);

  /// Serializes this OrdersResModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResModel&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),meta);

@override
String toString() {
  return 'OrdersResModel(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrdersResModelCopyWith<$Res>  {
  factory $OrdersResModelCopyWith(OrdersResModel value, $Res Function(OrdersResModel) _then) = _$OrdersResModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "data") List<OrderModel>? orders,@JsonKey(name: "meta") MetaModel? meta
});


$MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class _$OrdersResModelCopyWithImpl<$Res>
    implements $OrdersResModelCopyWith<$Res> {
  _$OrdersResModelCopyWithImpl(this._self, this._then);

  final OrdersResModel _self;
  final $Res Function(OrdersResModel) _then;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}
/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrdersResModel].
extension OrdersResModelPatterns on OrdersResModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersResModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersResModel value)  $default,){
final _that = this;
switch (_that) {
case _OrdersResModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersResModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<OrderModel>? orders, @JsonKey(name: "meta")  MetaModel? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
return $default(_that.orders,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "data")  List<OrderModel>? orders, @JsonKey(name: "meta")  MetaModel? meta)  $default,) {final _that = this;
switch (_that) {
case _OrdersResModel():
return $default(_that.orders,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "data")  List<OrderModel>? orders, @JsonKey(name: "meta")  MetaModel? meta)?  $default,) {final _that = this;
switch (_that) {
case _OrdersResModel() when $default != null:
return $default(_that.orders,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrdersResModel implements OrdersResModel {
  const _OrdersResModel({@JsonKey(name: "data") final  List<OrderModel>? orders, @JsonKey(name: "meta") this.meta}): _orders = orders;
  factory _OrdersResModel.fromJson(Map<String, dynamic> json) => _$OrdersResModelFromJson(json);

 final  List<OrderModel>? _orders;
@override@JsonKey(name: "data") List<OrderModel>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "meta") final  MetaModel? meta;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersResModelCopyWith<_OrdersResModel> get copyWith => __$OrdersResModelCopyWithImpl<_OrdersResModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrdersResModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersResModel&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString() {
  return 'OrdersResModel(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrdersResModelCopyWith<$Res> implements $OrdersResModelCopyWith<$Res> {
  factory _$OrdersResModelCopyWith(_OrdersResModel value, $Res Function(_OrdersResModel) _then) = __$OrdersResModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "data") List<OrderModel>? orders,@JsonKey(name: "meta") MetaModel? meta
});


@override $MetaModelCopyWith<$Res>? get meta;

}
/// @nodoc
class __$OrdersResModelCopyWithImpl<$Res>
    implements _$OrdersResModelCopyWith<$Res> {
  __$OrdersResModelCopyWithImpl(this._self, this._then);

  final _OrdersResModel _self;
  final $Res Function(_OrdersResModel) _then;

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_OrdersResModel(
orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaModel?,
  ));
}

/// Create a copy of OrdersResModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaModelCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaModelCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$OrderModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "reference_id") int? get referenceId;@JsonKey(name: "salla_order_status") OrderStatusModel? get sallaOrderStatus;@JsonKey(name: "salla_order_items") List<SallaOrderItemModel>? get sallaOrderItems; CustomerModel? get customer;@JsonKey(name: "created_at") String? get createdAt;@JsonKey(name: "updated_at") String? get updatedAt;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.sallaOrderStatus, sallaOrderStatus) || other.sallaOrderStatus == sallaOrderStatus)&&const DeepCollectionEquality().equals(other.sallaOrderItems, sallaOrderItems)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referenceId,sallaOrderStatus,const DeepCollectionEquality().hash(sallaOrderItems),customer,createdAt,updatedAt);

@override
String toString() {
  return 'OrderModel(id: $id, referenceId: $referenceId, sallaOrderStatus: $sallaOrderStatus, sallaOrderItems: $sallaOrderItems, customer: $customer, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "reference_id") int? referenceId,@JsonKey(name: "salla_order_status") OrderStatusModel? sallaOrderStatus,@JsonKey(name: "salla_order_items") List<SallaOrderItemModel>? sallaOrderItems, CustomerModel? customer,@JsonKey(name: "created_at") String? createdAt,@JsonKey(name: "updated_at") String? updatedAt
});


$OrderStatusModelCopyWith<$Res>? get sallaOrderStatus;$CustomerModelCopyWith<$Res>? get customer;

}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? referenceId = freezed,Object? sallaOrderStatus = freezed,Object? sallaOrderItems = freezed,Object? customer = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,sallaOrderStatus: freezed == sallaOrderStatus ? _self.sallaOrderStatus : sallaOrderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusModel?,sallaOrderItems: freezed == sallaOrderItems ? _self.sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemModel>?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusModelCopyWith<$Res>? get sallaOrderStatus {
    if (_self.sallaOrderStatus == null) {
    return null;
  }

  return $OrderStatusModelCopyWith<$Res>(_self.sallaOrderStatus!, (value) {
    return _then(_self.copyWith(sallaOrderStatus: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerModelCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "reference_id")  int? referenceId, @JsonKey(name: "salla_order_status")  OrderStatusModel? sallaOrderStatus, @JsonKey(name: "salla_order_items")  List<SallaOrderItemModel>? sallaOrderItems,  CustomerModel? customer, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "updated_at")  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.referenceId,_that.sallaOrderStatus,_that.sallaOrderItems,_that.customer,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "reference_id")  int? referenceId, @JsonKey(name: "salla_order_status")  OrderStatusModel? sallaOrderStatus, @JsonKey(name: "salla_order_items")  List<SallaOrderItemModel>? sallaOrderItems,  CustomerModel? customer, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "updated_at")  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.referenceId,_that.sallaOrderStatus,_that.sallaOrderItems,_that.customer,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "reference_id")  int? referenceId, @JsonKey(name: "salla_order_status")  OrderStatusModel? sallaOrderStatus, @JsonKey(name: "salla_order_items")  List<SallaOrderItemModel>? sallaOrderItems,  CustomerModel? customer, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "updated_at")  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.referenceId,_that.sallaOrderStatus,_that.sallaOrderItems,_that.customer,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderModel implements OrderModel {
  const _OrderModel({@JsonKey(name: "id") this.id, @JsonKey(name: "reference_id") this.referenceId, @JsonKey(name: "salla_order_status") this.sallaOrderStatus, @JsonKey(name: "salla_order_items") final  List<SallaOrderItemModel>? sallaOrderItems, this.customer, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt}): _sallaOrderItems = sallaOrderItems;
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "reference_id") final  int? referenceId;
@override@JsonKey(name: "salla_order_status") final  OrderStatusModel? sallaOrderStatus;
 final  List<SallaOrderItemModel>? _sallaOrderItems;
@override@JsonKey(name: "salla_order_items") List<SallaOrderItemModel>? get sallaOrderItems {
  final value = _sallaOrderItems;
  if (value == null) return null;
  if (_sallaOrderItems is EqualUnmodifiableListView) return _sallaOrderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  CustomerModel? customer;
@override@JsonKey(name: "created_at") final  String? createdAt;
@override@JsonKey(name: "updated_at") final  String? updatedAt;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.sallaOrderStatus, sallaOrderStatus) || other.sallaOrderStatus == sallaOrderStatus)&&const DeepCollectionEquality().equals(other._sallaOrderItems, _sallaOrderItems)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,referenceId,sallaOrderStatus,const DeepCollectionEquality().hash(_sallaOrderItems),customer,createdAt,updatedAt);

@override
String toString() {
  return 'OrderModel(id: $id, referenceId: $referenceId, sallaOrderStatus: $sallaOrderStatus, sallaOrderItems: $sallaOrderItems, customer: $customer, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "reference_id") int? referenceId,@JsonKey(name: "salla_order_status") OrderStatusModel? sallaOrderStatus,@JsonKey(name: "salla_order_items") List<SallaOrderItemModel>? sallaOrderItems, CustomerModel? customer,@JsonKey(name: "created_at") String? createdAt,@JsonKey(name: "updated_at") String? updatedAt
});


@override $OrderStatusModelCopyWith<$Res>? get sallaOrderStatus;@override $CustomerModelCopyWith<$Res>? get customer;

}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? referenceId = freezed,Object? sallaOrderStatus = freezed,Object? sallaOrderItems = freezed,Object? customer = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_OrderModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as int?,sallaOrderStatus: freezed == sallaOrderStatus ? _self.sallaOrderStatus : sallaOrderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusModel?,sallaOrderItems: freezed == sallaOrderItems ? _self._sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemModel>?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusModelCopyWith<$Res>? get sallaOrderStatus {
    if (_self.sallaOrderStatus == null) {
    return null;
  }

  return $OrderStatusModelCopyWith<$Res>(_self.sallaOrderStatus!, (value) {
    return _then(_self.copyWith(sallaOrderStatus: value));
  });
}/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $CustomerModelCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}
}


/// @nodoc
mixin _$CustomerModel {

@JsonKey(name: "full_name") String? get fullName; int? get mobile; String? get email;
/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<CustomerModel> get copyWith => _$CustomerModelCopyWithImpl<CustomerModel>(this as CustomerModel, _$identity);

  /// Serializes this CustomerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,mobile,email);

@override
String toString() {
  return 'CustomerModel(fullName: $fullName, mobile: $mobile, email: $email)';
}


}

/// @nodoc
abstract mixin class $CustomerModelCopyWith<$Res>  {
  factory $CustomerModelCopyWith(CustomerModel value, $Res Function(CustomerModel) _then) = _$CustomerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "full_name") String? fullName, int? mobile, String? email
});




}
/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._self, this._then);

  final CustomerModel _self;
  final $Res Function(CustomerModel) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? mobile = freezed,Object? email = freezed,}) {
  return _then(_self.copyWith(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerModel].
extension CustomerModelPatterns on CustomerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerModel value)  $default,){
final _that = this;
switch (_that) {
case _CustomerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerModel value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName,  int? mobile,  String? email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
return $default(_that.fullName,_that.mobile,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "full_name")  String? fullName,  int? mobile,  String? email)  $default,) {final _that = this;
switch (_that) {
case _CustomerModel():
return $default(_that.fullName,_that.mobile,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "full_name")  String? fullName,  int? mobile,  String? email)?  $default,) {final _that = this;
switch (_that) {
case _CustomerModel() when $default != null:
return $default(_that.fullName,_that.mobile,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerModel implements CustomerModel {
  const _CustomerModel({@JsonKey(name: "full_name") this.fullName, this.mobile, this.email});
  factory _CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

@override@JsonKey(name: "full_name") final  String? fullName;
@override final  int? mobile;
@override final  String? email;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerModelCopyWith<_CustomerModel> get copyWith => __$CustomerModelCopyWithImpl<_CustomerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerModel&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullName,mobile,email);

@override
String toString() {
  return 'CustomerModel(fullName: $fullName, mobile: $mobile, email: $email)';
}


}

/// @nodoc
abstract mixin class _$CustomerModelCopyWith<$Res> implements $CustomerModelCopyWith<$Res> {
  factory _$CustomerModelCopyWith(_CustomerModel value, $Res Function(_CustomerModel) _then) = __$CustomerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "full_name") String? fullName, int? mobile, String? email
});




}
/// @nodoc
class __$CustomerModelCopyWithImpl<$Res>
    implements _$CustomerModelCopyWith<$Res> {
  __$CustomerModelCopyWithImpl(this._self, this._then);

  final _CustomerModel _self;
  final $Res Function(_CustomerModel) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? mobile = freezed,Object? email = freezed,}) {
  return _then(_CustomerModel(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SallaOrderItemModel {

 int? get id; String? get productName;@JsonKey(name: "printed_name") String? get printedName; List<UnitModel>? get units;@JsonKey(name: "distribution_country") String? get distributionCountry; String? get additions;
/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemModelCopyWith<SallaOrderItemModel> get copyWith => _$SallaOrderItemModelCopyWithImpl<SallaOrderItemModel>(this as SallaOrderItemModel, _$identity);

  /// Serializes this SallaOrderItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other.units, units)&&(identical(other.distributionCountry, distributionCountry) || other.distributionCountry == distributionCountry)&&(identical(other.additions, additions) || other.additions == additions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productName,printedName,const DeepCollectionEquality().hash(units),distributionCountry,additions);

@override
String toString() {
  return 'SallaOrderItemModel(id: $id, productName: $productName, printedName: $printedName, units: $units, distributionCountry: $distributionCountry, additions: $additions)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemModelCopyWith<$Res>  {
  factory $SallaOrderItemModelCopyWith(SallaOrderItemModel value, $Res Function(SallaOrderItemModel) _then) = _$SallaOrderItemModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? productName,@JsonKey(name: "printed_name") String? printedName, List<UnitModel>? units,@JsonKey(name: "distribution_country") String? distributionCountry, String? additions
});




}
/// @nodoc
class _$SallaOrderItemModelCopyWithImpl<$Res>
    implements $SallaOrderItemModelCopyWith<$Res> {
  _$SallaOrderItemModelCopyWithImpl(this._self, this._then);

  final SallaOrderItemModel _self;
  final $Res Function(SallaOrderItemModel) _then;

/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? productName = freezed,Object? printedName = freezed,Object? units = freezed,Object? distributionCountry = freezed,Object? additions = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as List<UnitModel>?,distributionCountry: freezed == distributionCountry ? _self.distributionCountry : distributionCountry // ignore: cast_nullable_to_non_nullable
as String?,additions: freezed == additions ? _self.additions : additions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SallaOrderItemModel].
extension SallaOrderItemModelPatterns on SallaOrderItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemModel value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? productName, @JsonKey(name: "printed_name")  String? printedName,  List<UnitModel>? units, @JsonKey(name: "distribution_country")  String? distributionCountry,  String? additions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
return $default(_that.id,_that.productName,_that.printedName,_that.units,_that.distributionCountry,_that.additions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? productName, @JsonKey(name: "printed_name")  String? printedName,  List<UnitModel>? units, @JsonKey(name: "distribution_country")  String? distributionCountry,  String? additions)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemModel():
return $default(_that.id,_that.productName,_that.printedName,_that.units,_that.distributionCountry,_that.additions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? productName, @JsonKey(name: "printed_name")  String? printedName,  List<UnitModel>? units, @JsonKey(name: "distribution_country")  String? distributionCountry,  String? additions)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemModel() when $default != null:
return $default(_that.id,_that.productName,_that.printedName,_that.units,_that.distributionCountry,_that.additions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SallaOrderItemModel implements SallaOrderItemModel {
  const _SallaOrderItemModel({this.id, this.productName, @JsonKey(name: "printed_name") this.printedName, final  List<UnitModel>? units, @JsonKey(name: "distribution_country") this.distributionCountry, this.additions}): _units = units;
  factory _SallaOrderItemModel.fromJson(Map<String, dynamic> json) => _$SallaOrderItemModelFromJson(json);

@override final  int? id;
@override final  String? productName;
@override@JsonKey(name: "printed_name") final  String? printedName;
 final  List<UnitModel>? _units;
@override List<UnitModel>? get units {
  final value = _units;
  if (value == null) return null;
  if (_units is EqualUnmodifiableListView) return _units;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "distribution_country") final  String? distributionCountry;
@override final  String? additions;

/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemModelCopyWith<_SallaOrderItemModel> get copyWith => __$SallaOrderItemModelCopyWithImpl<_SallaOrderItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SallaOrderItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&const DeepCollectionEquality().equals(other._units, _units)&&(identical(other.distributionCountry, distributionCountry) || other.distributionCountry == distributionCountry)&&(identical(other.additions, additions) || other.additions == additions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productName,printedName,const DeepCollectionEquality().hash(_units),distributionCountry,additions);

@override
String toString() {
  return 'SallaOrderItemModel(id: $id, productName: $productName, printedName: $printedName, units: $units, distributionCountry: $distributionCountry, additions: $additions)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemModelCopyWith<$Res> implements $SallaOrderItemModelCopyWith<$Res> {
  factory _$SallaOrderItemModelCopyWith(_SallaOrderItemModel value, $Res Function(_SallaOrderItemModel) _then) = __$SallaOrderItemModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? productName,@JsonKey(name: "printed_name") String? printedName, List<UnitModel>? units,@JsonKey(name: "distribution_country") String? distributionCountry, String? additions
});




}
/// @nodoc
class __$SallaOrderItemModelCopyWithImpl<$Res>
    implements _$SallaOrderItemModelCopyWith<$Res> {
  __$SallaOrderItemModelCopyWithImpl(this._self, this._then);

  final _SallaOrderItemModel _self;
  final $Res Function(_SallaOrderItemModel) _then;

/// Create a copy of SallaOrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? productName = freezed,Object? printedName = freezed,Object? units = freezed,Object? distributionCountry = freezed,Object? additions = freezed,}) {
  return _then(_SallaOrderItemModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,units: freezed == units ? _self._units : units // ignore: cast_nullable_to_non_nullable
as List<UnitModel>?,distributionCountry: freezed == distributionCountry ? _self.distributionCountry : distributionCountry // ignore: cast_nullable_to_non_nullable
as String?,additions: freezed == additions ? _self.additions : additions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UnitModel {

 int? get id;@JsonKey(name: "unit_number") int? get unitNumber;@JsonKey(name: "execution_number") String? get executionNumber;@JsonKey(name: "documentation_link") String? get documentationLink;
/// Create a copy of UnitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitModelCopyWith<UnitModel> get copyWith => _$UnitModelCopyWithImpl<UnitModel>(this as UnitModel, _$identity);

  /// Serializes this UnitModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&(identical(other.documentationLink, documentationLink) || other.documentationLink == documentationLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitNumber,executionNumber,documentationLink);

@override
String toString() {
  return 'UnitModel(id: $id, unitNumber: $unitNumber, executionNumber: $executionNumber, documentationLink: $documentationLink)';
}


}

/// @nodoc
abstract mixin class $UnitModelCopyWith<$Res>  {
  factory $UnitModelCopyWith(UnitModel value, $Res Function(UnitModel) _then) = _$UnitModelCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: "unit_number") int? unitNumber,@JsonKey(name: "execution_number") String? executionNumber,@JsonKey(name: "documentation_link") String? documentationLink
});




}
/// @nodoc
class _$UnitModelCopyWithImpl<$Res>
    implements $UnitModelCopyWith<$Res> {
  _$UnitModelCopyWithImpl(this._self, this._then);

  final UnitModel _self;
  final $Res Function(UnitModel) _then;

/// Create a copy of UnitModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? unitNumber = freezed,Object? executionNumber = freezed,Object? documentationLink = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,unitNumber: freezed == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as int?,executionNumber: freezed == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String?,documentationLink: freezed == documentationLink ? _self.documentationLink : documentationLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitModel].
extension UnitModelPatterns on UnitModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitModel value)  $default,){
final _that = this;
switch (_that) {
case _UnitModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitModel value)?  $default,){
final _that = this;
switch (_that) {
case _UnitModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "unit_number")  int? unitNumber, @JsonKey(name: "execution_number")  String? executionNumber, @JsonKey(name: "documentation_link")  String? documentationLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitModel() when $default != null:
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.documentationLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: "unit_number")  int? unitNumber, @JsonKey(name: "execution_number")  String? executionNumber, @JsonKey(name: "documentation_link")  String? documentationLink)  $default,) {final _that = this;
switch (_that) {
case _UnitModel():
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.documentationLink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: "unit_number")  int? unitNumber, @JsonKey(name: "execution_number")  String? executionNumber, @JsonKey(name: "documentation_link")  String? documentationLink)?  $default,) {final _that = this;
switch (_that) {
case _UnitModel() when $default != null:
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.documentationLink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UnitModel implements UnitModel {
  const _UnitModel({this.id, @JsonKey(name: "unit_number") this.unitNumber, @JsonKey(name: "execution_number") this.executionNumber, @JsonKey(name: "documentation_link") this.documentationLink});
  factory _UnitModel.fromJson(Map<String, dynamic> json) => _$UnitModelFromJson(json);

@override final  int? id;
@override@JsonKey(name: "unit_number") final  int? unitNumber;
@override@JsonKey(name: "execution_number") final  String? executionNumber;
@override@JsonKey(name: "documentation_link") final  String? documentationLink;

/// Create a copy of UnitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitModelCopyWith<_UnitModel> get copyWith => __$UnitModelCopyWithImpl<_UnitModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnitModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitModel&&(identical(other.id, id) || other.id == id)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&(identical(other.documentationLink, documentationLink) || other.documentationLink == documentationLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,unitNumber,executionNumber,documentationLink);

@override
String toString() {
  return 'UnitModel(id: $id, unitNumber: $unitNumber, executionNumber: $executionNumber, documentationLink: $documentationLink)';
}


}

/// @nodoc
abstract mixin class _$UnitModelCopyWith<$Res> implements $UnitModelCopyWith<$Res> {
  factory _$UnitModelCopyWith(_UnitModel value, $Res Function(_UnitModel) _then) = __$UnitModelCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: "unit_number") int? unitNumber,@JsonKey(name: "execution_number") String? executionNumber,@JsonKey(name: "documentation_link") String? documentationLink
});




}
/// @nodoc
class __$UnitModelCopyWithImpl<$Res>
    implements _$UnitModelCopyWith<$Res> {
  __$UnitModelCopyWithImpl(this._self, this._then);

  final _UnitModel _self;
  final $Res Function(_UnitModel) _then;

/// Create a copy of UnitModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? unitNumber = freezed,Object? executionNumber = freezed,Object? documentationLink = freezed,}) {
  return _then(_UnitModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,unitNumber: freezed == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as int?,executionNumber: freezed == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String?,documentationLink: freezed == documentationLink ? _self.documentationLink : documentationLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ValueModel {

 int? get id; String? get name;
/// Create a copy of ValueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueModelCopyWith<ValueModel> get copyWith => _$ValueModelCopyWithImpl<ValueModel>(this as ValueModel, _$identity);

  /// Serializes this ValueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ValueModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ValueModelCopyWith<$Res>  {
  factory $ValueModelCopyWith(ValueModel value, $Res Function(ValueModel) _then) = _$ValueModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$ValueModelCopyWithImpl<$Res>
    implements $ValueModelCopyWith<$Res> {
  _$ValueModelCopyWithImpl(this._self, this._then);

  final ValueModel _self;
  final $Res Function(ValueModel) _then;

/// Create a copy of ValueModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ValueModel].
extension ValueModelPatterns on ValueModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValueModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValueModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValueModel value)  $default,){
final _that = this;
switch (_that) {
case _ValueModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValueModel value)?  $default,){
final _that = this;
switch (_that) {
case _ValueModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValueModel() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ValueModel():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ValueModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValueModel implements ValueModel {
  const _ValueModel({this.id, this.name});
  factory _ValueModel.fromJson(Map<String, dynamic> json) => _$ValueModelFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of ValueModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValueModelCopyWith<_ValueModel> get copyWith => __$ValueModelCopyWithImpl<_ValueModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValueModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ValueModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ValueModelCopyWith<$Res> implements $ValueModelCopyWith<$Res> {
  factory _$ValueModelCopyWith(_ValueModel value, $Res Function(_ValueModel) _then) = __$ValueModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$ValueModelCopyWithImpl<$Res>
    implements _$ValueModelCopyWith<$Res> {
  __$ValueModelCopyWithImpl(this._self, this._then);

  final _ValueModel _self;
  final $Res Function(_ValueModel) _then;

/// Create a copy of ValueModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ValueModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CookingMethodModel {

 int? get id; String? get name;
/// Create a copy of CookingMethodModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CookingMethodModelCopyWith<CookingMethodModel> get copyWith => _$CookingMethodModelCopyWithImpl<CookingMethodModel>(this as CookingMethodModel, _$identity);

  /// Serializes this CookingMethodModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CookingMethodModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CookingMethodModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CookingMethodModelCopyWith<$Res>  {
  factory $CookingMethodModelCopyWith(CookingMethodModel value, $Res Function(CookingMethodModel) _then) = _$CookingMethodModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$CookingMethodModelCopyWithImpl<$Res>
    implements $CookingMethodModelCopyWith<$Res> {
  _$CookingMethodModelCopyWithImpl(this._self, this._then);

  final CookingMethodModel _self;
  final $Res Function(CookingMethodModel) _then;

/// Create a copy of CookingMethodModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CookingMethodModel].
extension CookingMethodModelPatterns on CookingMethodModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CookingMethodModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CookingMethodModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CookingMethodModel value)  $default,){
final _that = this;
switch (_that) {
case _CookingMethodModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CookingMethodModel value)?  $default,){
final _that = this;
switch (_that) {
case _CookingMethodModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CookingMethodModel() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _CookingMethodModel():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _CookingMethodModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CookingMethodModel implements CookingMethodModel {
  const _CookingMethodModel({this.id, this.name});
  factory _CookingMethodModel.fromJson(Map<String, dynamic> json) => _$CookingMethodModelFromJson(json);

@override final  int? id;
@override final  String? name;

/// Create a copy of CookingMethodModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CookingMethodModelCopyWith<_CookingMethodModel> get copyWith => __$CookingMethodModelCopyWithImpl<_CookingMethodModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CookingMethodModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CookingMethodModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CookingMethodModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CookingMethodModelCopyWith<$Res> implements $CookingMethodModelCopyWith<$Res> {
  factory _$CookingMethodModelCopyWith(_CookingMethodModel value, $Res Function(_CookingMethodModel) _then) = __$CookingMethodModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$CookingMethodModelCopyWithImpl<$Res>
    implements _$CookingMethodModelCopyWith<$Res> {
  __$CookingMethodModelCopyWithImpl(this._self, this._then);

  final _CookingMethodModel _self;
  final $Res Function(_CookingMethodModel) _then;

/// Create a copy of CookingMethodModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_CookingMethodModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
