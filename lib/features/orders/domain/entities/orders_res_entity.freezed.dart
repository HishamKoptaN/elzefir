// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_res_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrdersResEntity {

 List<OrderEntity>? get orders; MetaEntity? get meta;
/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrdersResEntityCopyWith<OrdersResEntity> get copyWith => _$OrdersResEntityCopyWithImpl<OrdersResEntity>(this as OrdersResEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrdersResEntity&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),meta);

@override
String toString() {
  return 'OrdersResEntity(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $OrdersResEntityCopyWith<$Res>  {
  factory $OrdersResEntityCopyWith(OrdersResEntity value, $Res Function(OrdersResEntity) _then) = _$OrdersResEntityCopyWithImpl;
@useResult
$Res call({
 List<OrderEntity>? orders, MetaEntity? meta
});




}
/// @nodoc
class _$OrdersResEntityCopyWithImpl<$Res>
    implements $OrdersResEntityCopyWith<$Res> {
  _$OrdersResEntityCopyWithImpl(this._self, this._then);

  final OrdersResEntity _self;
  final $Res Function(OrdersResEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
orders: freezed == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrdersResEntity].
extension OrdersResEntityPatterns on OrdersResEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrdersResEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrdersResEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrdersResEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrdersResEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OrderEntity>? orders,  MetaEntity? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OrderEntity>? orders,  MetaEntity? meta)  $default,) {final _that = this;
switch (_that) {
case _OrdersResEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OrderEntity>? orders,  MetaEntity? meta)?  $default,) {final _that = this;
switch (_that) {
case _OrdersResEntity() when $default != null:
return $default(_that.orders,_that.meta);case _:
  return null;

}
}

}

/// @nodoc


class _OrdersResEntity implements OrdersResEntity {
  const _OrdersResEntity({  List<OrderEntity>? orders, this.meta}): _orders = orders;
  

 final  List<OrderEntity>? _orders;
@override List<OrderEntity>? get orders {
  final value = _orders;
  if (value == null) return null;
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  MetaEntity? meta;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrdersResEntityCopyWith<_OrdersResEntity> get copyWith => __$OrdersResEntityCopyWithImpl<_OrdersResEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrdersResEntity&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.meta, meta) || other.meta == meta));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),meta);

@override
String toString() {
  return 'OrdersResEntity(orders: $orders, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$OrdersResEntityCopyWith<$Res> implements $OrdersResEntityCopyWith<$Res> {
  factory _$OrdersResEntityCopyWith(_OrdersResEntity value, $Res Function(_OrdersResEntity) _then) = __$OrdersResEntityCopyWithImpl;
@override @useResult
$Res call({
 List<OrderEntity>? orders, MetaEntity? meta
});




}
/// @nodoc
class __$OrdersResEntityCopyWithImpl<$Res>
    implements _$OrdersResEntityCopyWith<$Res> {
  __$OrdersResEntityCopyWithImpl(this._self, this._then);

  final _OrdersResEntity _self;
  final $Res Function(_OrdersResEntity) _then;

/// Create a copy of OrdersResEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = freezed,Object? meta = freezed,}) {
  return _then(_OrdersResEntity(
orders: freezed == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<OrderEntity>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MetaEntity?,
  ));
}


}

/// @nodoc
mixin _$OrderEntity {

 String? get id; String? get referenceId; OrderStatusEntity? get orderStatus; List<SallaOrderItemEntity>? get sallaOrderItems; ClientEntity? get customer; FormattedDateTimeEntity? get createdAt; FormattedDateTimeEntity? get updatedAt;
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderEntityCopyWith<OrderEntity> get copyWith => _$OrderEntityCopyWithImpl<OrderEntity>(this as OrderEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other.sallaOrderItems, sallaOrderItems)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,referenceId,orderStatus,const DeepCollectionEquality().hash(sallaOrderItems),customer,createdAt,updatedAt);

@override
String toString() {
  return 'OrderEntity(id: $id, referenceId: $referenceId, orderStatus: $orderStatus, sallaOrderItems: $sallaOrderItems, customer: $customer, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OrderEntityCopyWith<$Res>  {
  factory $OrderEntityCopyWith(OrderEntity value, $Res Function(OrderEntity) _then) = _$OrderEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? referenceId, OrderStatusEntity? orderStatus, List<SallaOrderItemEntity>? sallaOrderItems, ClientEntity? customer, FormattedDateTimeEntity? createdAt, FormattedDateTimeEntity? updatedAt
});


$OrderStatusEntityCopyWith<$Res>? get orderStatus;$ClientEntityCopyWith<$Res>? get customer;$FormattedDateTimeEntityCopyWith<$Res>? get createdAt;$FormattedDateTimeEntityCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class _$OrderEntityCopyWithImpl<$Res>
    implements $OrderEntityCopyWith<$Res> {
  _$OrderEntityCopyWithImpl(this._self, this._then);

  final OrderEntity _self;
  final $Res Function(OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? referenceId = freezed,Object? orderStatus = freezed,Object? sallaOrderItems = freezed,Object? customer = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusEntity?,sallaOrderItems: freezed == sallaOrderItems ? _self.sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as ClientEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,
  ));
}
/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<$Res>? get orderStatus {
    if (_self.orderStatus == null) {
    return null;
  }

  return $OrderStatusEntityCopyWith<$Res>(_self.orderStatus!, (value) {
    return _then(_self.copyWith(orderStatus: value));
  });
}/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $ClientEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderEntity].
extension OrderEntityPatterns on OrderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? referenceId,  OrderStatusEntity? orderStatus,  List<SallaOrderItemEntity>? sallaOrderItems,  ClientEntity? customer,  FormattedDateTimeEntity? createdAt,  FormattedDateTimeEntity? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.referenceId,_that.orderStatus,_that.sallaOrderItems,_that.customer,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? referenceId,  OrderStatusEntity? orderStatus,  List<SallaOrderItemEntity>? sallaOrderItems,  ClientEntity? customer,  FormattedDateTimeEntity? createdAt,  FormattedDateTimeEntity? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _OrderEntity():
return $default(_that.id,_that.referenceId,_that.orderStatus,_that.sallaOrderItems,_that.customer,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? referenceId,  OrderStatusEntity? orderStatus,  List<SallaOrderItemEntity>? sallaOrderItems,  ClientEntity? customer,  FormattedDateTimeEntity? createdAt,  FormattedDateTimeEntity? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OrderEntity() when $default != null:
return $default(_that.id,_that.referenceId,_that.orderStatus,_that.sallaOrderItems,_that.customer,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _OrderEntity implements OrderEntity {
  const _OrderEntity({this.id, this.referenceId, this.orderStatus,   List<SallaOrderItemEntity>? sallaOrderItems, this.customer, this.createdAt, this.updatedAt}): _sallaOrderItems = sallaOrderItems;
  

@override final  String? id;
@override final  String? referenceId;
@override final  OrderStatusEntity? orderStatus;
 final  List<SallaOrderItemEntity>? _sallaOrderItems;
@override List<SallaOrderItemEntity>? get sallaOrderItems {
  final value = _sallaOrderItems;
  if (value == null) return null;
  if (_sallaOrderItems is EqualUnmodifiableListView) return _sallaOrderItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ClientEntity? customer;
@override final  FormattedDateTimeEntity? createdAt;
@override final  FormattedDateTimeEntity? updatedAt;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderEntityCopyWith<_OrderEntity> get copyWith => __$OrderEntityCopyWithImpl<_OrderEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.orderStatus, orderStatus) || other.orderStatus == orderStatus)&&const DeepCollectionEquality().equals(other._sallaOrderItems, _sallaOrderItems)&&(identical(other.customer, customer) || other.customer == customer)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,referenceId,orderStatus,const DeepCollectionEquality().hash(_sallaOrderItems),customer,createdAt,updatedAt);

@override
String toString() {
  return 'OrderEntity(id: $id, referenceId: $referenceId, orderStatus: $orderStatus, sallaOrderItems: $sallaOrderItems, customer: $customer, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OrderEntityCopyWith<$Res> implements $OrderEntityCopyWith<$Res> {
  factory _$OrderEntityCopyWith(_OrderEntity value, $Res Function(_OrderEntity) _then) = __$OrderEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? referenceId, OrderStatusEntity? orderStatus, List<SallaOrderItemEntity>? sallaOrderItems, ClientEntity? customer, FormattedDateTimeEntity? createdAt, FormattedDateTimeEntity? updatedAt
});


@override $OrderStatusEntityCopyWith<$Res>? get orderStatus;@override $ClientEntityCopyWith<$Res>? get customer;@override $FormattedDateTimeEntityCopyWith<$Res>? get createdAt;@override $FormattedDateTimeEntityCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class __$OrderEntityCopyWithImpl<$Res>
    implements _$OrderEntityCopyWith<$Res> {
  __$OrderEntityCopyWithImpl(this._self, this._then);

  final _OrderEntity _self;
  final $Res Function(_OrderEntity) _then;

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? referenceId = freezed,Object? orderStatus = freezed,Object? sallaOrderItems = freezed,Object? customer = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_OrderEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,orderStatus: freezed == orderStatus ? _self.orderStatus : orderStatus // ignore: cast_nullable_to_non_nullable
as OrderStatusEntity?,sallaOrderItems: freezed == sallaOrderItems ? _self._sallaOrderItems : sallaOrderItems // ignore: cast_nullable_to_non_nullable
as List<SallaOrderItemEntity>?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as ClientEntity?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,
  ));
}

/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<$Res>? get orderStatus {
    if (_self.orderStatus == null) {
    return null;
  }

  return $OrderStatusEntityCopyWith<$Res>(_self.orderStatus!, (value) {
    return _then(_self.copyWith(orderStatus: value));
  });
}/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<$Res>? get customer {
    if (_self.customer == null) {
    return null;
  }

  return $ClientEntityCopyWith<$Res>(_self.customer!, (value) {
    return _then(_self.copyWith(customer: value));
  });
}/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of OrderEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}

/// @nodoc
mixin _$ClientEntity {

 String? get fullName; String? get mobile; String? get email; String? get country;
/// Create a copy of ClientEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientEntityCopyWith<ClientEntity> get copyWith => _$ClientEntityCopyWithImpl<ClientEntity>(this as ClientEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientEntity&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,mobile,email,country);

@override
String toString() {
  return 'ClientEntity(fullName: $fullName, mobile: $mobile, email: $email, country: $country)';
}


}

/// @nodoc
abstract mixin class $ClientEntityCopyWith<$Res>  {
  factory $ClientEntityCopyWith(ClientEntity value, $Res Function(ClientEntity) _then) = _$ClientEntityCopyWithImpl;
@useResult
$Res call({
 String? fullName, String? mobile, String? email, String? country
});




}
/// @nodoc
class _$ClientEntityCopyWithImpl<$Res>
    implements $ClientEntityCopyWith<$Res> {
  _$ClientEntityCopyWithImpl(this._self, this._then);

  final ClientEntity _self;
  final $Res Function(ClientEntity) _then;

/// Create a copy of ClientEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = freezed,Object? mobile = freezed,Object? email = freezed,Object? country = freezed,}) {
  return _then(_self.copyWith(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClientEntity].
extension ClientEntityPatterns on ClientEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClientEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClientEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fullName,  String? mobile,  String? email,  String? country)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientEntity() when $default != null:
return $default(_that.fullName,_that.mobile,_that.email,_that.country);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fullName,  String? mobile,  String? email,  String? country)  $default,) {final _that = this;
switch (_that) {
case _ClientEntity():
return $default(_that.fullName,_that.mobile,_that.email,_that.country);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fullName,  String? mobile,  String? email,  String? country)?  $default,) {final _that = this;
switch (_that) {
case _ClientEntity() when $default != null:
return $default(_that.fullName,_that.mobile,_that.email,_that.country);case _:
  return null;

}
}

}

/// @nodoc


class _ClientEntity implements ClientEntity {
  const _ClientEntity({this.fullName, this.mobile, this.email, this.country});
  

@override final  String? fullName;
@override final  String? mobile;
@override final  String? email;
@override final  String? country;

/// Create a copy of ClientEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientEntityCopyWith<_ClientEntity> get copyWith => __$ClientEntityCopyWithImpl<_ClientEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientEntity&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.mobile, mobile) || other.mobile == mobile)&&(identical(other.email, email) || other.email == email)&&(identical(other.country, country) || other.country == country));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,mobile,email,country);

@override
String toString() {
  return 'ClientEntity(fullName: $fullName, mobile: $mobile, email: $email, country: $country)';
}


}

/// @nodoc
abstract mixin class _$ClientEntityCopyWith<$Res> implements $ClientEntityCopyWith<$Res> {
  factory _$ClientEntityCopyWith(_ClientEntity value, $Res Function(_ClientEntity) _then) = __$ClientEntityCopyWithImpl;
@override @useResult
$Res call({
 String? fullName, String? mobile, String? email, String? country
});




}
/// @nodoc
class __$ClientEntityCopyWithImpl<$Res>
    implements _$ClientEntityCopyWith<$Res> {
  __$ClientEntityCopyWithImpl(this._self, this._then);

  final _ClientEntity _self;
  final $Res Function(_ClientEntity) _then;

/// Create a copy of ClientEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = freezed,Object? mobile = freezed,Object? email = freezed,Object? country = freezed,}) {
  return _then(_ClientEntity(
fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,mobile: freezed == mobile ? _self.mobile : mobile // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$UnitEntity {

 String? get id; String? get unitNumber; String? get executionNumber; String? get documentationLink; bool get isSelected; bool get isGeneratedPdf; FormattedDateTimeEntity? get createdAt; FormattedDateTimeEntity? get updatedAt;
/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitEntityCopyWith<UnitEntity> get copyWith => _$UnitEntityCopyWithImpl<UnitEntity>(this as UnitEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&(identical(other.documentationLink, documentationLink) || other.documentationLink == documentationLink)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected)&&(identical(other.isGeneratedPdf, isGeneratedPdf) || other.isGeneratedPdf == isGeneratedPdf)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,unitNumber,executionNumber,documentationLink,isSelected,isGeneratedPdf,createdAt,updatedAt);

@override
String toString() {
  return 'UnitEntity(id: $id, unitNumber: $unitNumber, executionNumber: $executionNumber, documentationLink: $documentationLink, isSelected: $isSelected, isGeneratedPdf: $isGeneratedPdf, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UnitEntityCopyWith<$Res>  {
  factory $UnitEntityCopyWith(UnitEntity value, $Res Function(UnitEntity) _then) = _$UnitEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? unitNumber, String? executionNumber, String? documentationLink, bool isSelected, bool isGeneratedPdf, FormattedDateTimeEntity? createdAt, FormattedDateTimeEntity? updatedAt
});


$FormattedDateTimeEntityCopyWith<$Res>? get createdAt;$FormattedDateTimeEntityCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class _$UnitEntityCopyWithImpl<$Res>
    implements $UnitEntityCopyWith<$Res> {
  _$UnitEntityCopyWithImpl(this._self, this._then);

  final UnitEntity _self;
  final $Res Function(UnitEntity) _then;

/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? unitNumber = freezed,Object? executionNumber = freezed,Object? documentationLink = freezed,Object? isSelected = null,Object? isGeneratedPdf = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,unitNumber: freezed == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as String?,executionNumber: freezed == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String?,documentationLink: freezed == documentationLink ? _self.documentationLink : documentationLink // ignore: cast_nullable_to_non_nullable
as String?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,isGeneratedPdf: null == isGeneratedPdf ? _self.isGeneratedPdf : isGeneratedPdf // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,
  ));
}
/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}


/// Adds pattern-matching-related methods to [UnitEntity].
extension UnitEntityPatterns on UnitEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitEntity value)  $default,){
final _that = this;
switch (_that) {
case _UnitEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UnitEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? unitNumber,  String? executionNumber,  String? documentationLink,  bool isSelected,  bool isGeneratedPdf,  FormattedDateTimeEntity? createdAt,  FormattedDateTimeEntity? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitEntity() when $default != null:
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.documentationLink,_that.isSelected,_that.isGeneratedPdf,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? unitNumber,  String? executionNumber,  String? documentationLink,  bool isSelected,  bool isGeneratedPdf,  FormattedDateTimeEntity? createdAt,  FormattedDateTimeEntity? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UnitEntity():
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.documentationLink,_that.isSelected,_that.isGeneratedPdf,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? unitNumber,  String? executionNumber,  String? documentationLink,  bool isSelected,  bool isGeneratedPdf,  FormattedDateTimeEntity? createdAt,  FormattedDateTimeEntity? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UnitEntity() when $default != null:
return $default(_that.id,_that.unitNumber,_that.executionNumber,_that.documentationLink,_that.isSelected,_that.isGeneratedPdf,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UnitEntity implements UnitEntity {
  const _UnitEntity({this.id, this.unitNumber, this.executionNumber, this.documentationLink, this.isSelected = true, this.isGeneratedPdf = false, this.createdAt, this.updatedAt});
  

@override final  String? id;
@override final  String? unitNumber;
@override final  String? executionNumber;
@override final  String? documentationLink;
@override@JsonKey() final  bool isSelected;
@override@JsonKey() final  bool isGeneratedPdf;
@override final  FormattedDateTimeEntity? createdAt;
@override final  FormattedDateTimeEntity? updatedAt;

/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitEntityCopyWith<_UnitEntity> get copyWith => __$UnitEntityCopyWithImpl<_UnitEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.unitNumber, unitNumber) || other.unitNumber == unitNumber)&&(identical(other.executionNumber, executionNumber) || other.executionNumber == executionNumber)&&(identical(other.documentationLink, documentationLink) || other.documentationLink == documentationLink)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected)&&(identical(other.isGeneratedPdf, isGeneratedPdf) || other.isGeneratedPdf == isGeneratedPdf)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,unitNumber,executionNumber,documentationLink,isSelected,isGeneratedPdf,createdAt,updatedAt);

@override
String toString() {
  return 'UnitEntity(id: $id, unitNumber: $unitNumber, executionNumber: $executionNumber, documentationLink: $documentationLink, isSelected: $isSelected, isGeneratedPdf: $isGeneratedPdf, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UnitEntityCopyWith<$Res> implements $UnitEntityCopyWith<$Res> {
  factory _$UnitEntityCopyWith(_UnitEntity value, $Res Function(_UnitEntity) _then) = __$UnitEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? unitNumber, String? executionNumber, String? documentationLink, bool isSelected, bool isGeneratedPdf, FormattedDateTimeEntity? createdAt, FormattedDateTimeEntity? updatedAt
});


@override $FormattedDateTimeEntityCopyWith<$Res>? get createdAt;@override $FormattedDateTimeEntityCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class __$UnitEntityCopyWithImpl<$Res>
    implements _$UnitEntityCopyWith<$Res> {
  __$UnitEntityCopyWithImpl(this._self, this._then);

  final _UnitEntity _self;
  final $Res Function(_UnitEntity) _then;

/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? unitNumber = freezed,Object? executionNumber = freezed,Object? documentationLink = freezed,Object? isSelected = null,Object? isGeneratedPdf = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UnitEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,unitNumber: freezed == unitNumber ? _self.unitNumber : unitNumber // ignore: cast_nullable_to_non_nullable
as String?,executionNumber: freezed == executionNumber ? _self.executionNumber : executionNumber // ignore: cast_nullable_to_non_nullable
as String?,documentationLink: freezed == documentationLink ? _self.documentationLink : documentationLink // ignore: cast_nullable_to_non_nullable
as String?,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,isGeneratedPdf: null == isGeneratedPdf ? _self.isGeneratedPdf : isGeneratedPdf // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as FormattedDateTimeEntity?,
  ));
}

/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of UnitEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormattedDateTimeEntityCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $FormattedDateTimeEntityCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}

/// @nodoc
mixin _$SallaOrderItemEntity {

 String? get id; String? get printedName; String? get productName; String? get quantity; String? get distributionCountry; List<UnitEntity>? get units; String? get additions;
/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SallaOrderItemEntityCopyWith<SallaOrderItemEntity> get copyWith => _$SallaOrderItemEntityCopyWithImpl<SallaOrderItemEntity>(this as SallaOrderItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SallaOrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.distributionCountry, distributionCountry) || other.distributionCountry == distributionCountry)&&const DeepCollectionEquality().equals(other.units, units)&&(identical(other.additions, additions) || other.additions == additions));
}


@override
int get hashCode => Object.hash(runtimeType,id,printedName,productName,quantity,distributionCountry,const DeepCollectionEquality().hash(units),additions);

@override
String toString() {
  return 'SallaOrderItemEntity(id: $id, printedName: $printedName, productName: $productName, quantity: $quantity, distributionCountry: $distributionCountry, units: $units, additions: $additions)';
}


}

/// @nodoc
abstract mixin class $SallaOrderItemEntityCopyWith<$Res>  {
  factory $SallaOrderItemEntityCopyWith(SallaOrderItemEntity value, $Res Function(SallaOrderItemEntity) _then) = _$SallaOrderItemEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? printedName, String? productName, String? quantity, String? distributionCountry, List<UnitEntity>? units, String? additions
});




}
/// @nodoc
class _$SallaOrderItemEntityCopyWithImpl<$Res>
    implements $SallaOrderItemEntityCopyWith<$Res> {
  _$SallaOrderItemEntityCopyWithImpl(this._self, this._then);

  final SallaOrderItemEntity _self;
  final $Res Function(SallaOrderItemEntity) _then;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? printedName = freezed,Object? productName = freezed,Object? quantity = freezed,Object? distributionCountry = freezed,Object? units = freezed,Object? additions = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,distributionCountry: freezed == distributionCountry ? _self.distributionCountry : distributionCountry // ignore: cast_nullable_to_non_nullable
as String?,units: freezed == units ? _self.units : units // ignore: cast_nullable_to_non_nullable
as List<UnitEntity>?,additions: freezed == additions ? _self.additions : additions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SallaOrderItemEntity].
extension SallaOrderItemEntityPatterns on SallaOrderItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SallaOrderItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SallaOrderItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SallaOrderItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? printedName,  String? productName,  String? quantity,  String? distributionCountry,  List<UnitEntity>? units,  String? additions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.productName,_that.quantity,_that.distributionCountry,_that.units,_that.additions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? printedName,  String? productName,  String? quantity,  String? distributionCountry,  List<UnitEntity>? units,  String? additions)  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity():
return $default(_that.id,_that.printedName,_that.productName,_that.quantity,_that.distributionCountry,_that.units,_that.additions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? printedName,  String? productName,  String? quantity,  String? distributionCountry,  List<UnitEntity>? units,  String? additions)?  $default,) {final _that = this;
switch (_that) {
case _SallaOrderItemEntity() when $default != null:
return $default(_that.id,_that.printedName,_that.productName,_that.quantity,_that.distributionCountry,_that.units,_that.additions);case _:
  return null;

}
}

}

/// @nodoc


class _SallaOrderItemEntity implements SallaOrderItemEntity {
  const _SallaOrderItemEntity({this.id, this.printedName, this.productName, this.quantity, this.distributionCountry,   List<UnitEntity>? units, this.additions}): _units = units;
  

@override final  String? id;
@override final  String? printedName;
@override final  String? productName;
@override final  String? quantity;
@override final  String? distributionCountry;
 final  List<UnitEntity>? _units;
@override List<UnitEntity>? get units {
  final value = _units;
  if (value == null) return null;
  if (_units is EqualUnmodifiableListView) return _units;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? additions;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SallaOrderItemEntityCopyWith<_SallaOrderItemEntity> get copyWith => __$SallaOrderItemEntityCopyWithImpl<_SallaOrderItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SallaOrderItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.printedName, printedName) || other.printedName == printedName)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.distributionCountry, distributionCountry) || other.distributionCountry == distributionCountry)&&const DeepCollectionEquality().equals(other._units, _units)&&(identical(other.additions, additions) || other.additions == additions));
}


@override
int get hashCode => Object.hash(runtimeType,id,printedName,productName,quantity,distributionCountry,const DeepCollectionEquality().hash(_units),additions);

@override
String toString() {
  return 'SallaOrderItemEntity(id: $id, printedName: $printedName, productName: $productName, quantity: $quantity, distributionCountry: $distributionCountry, units: $units, additions: $additions)';
}


}

/// @nodoc
abstract mixin class _$SallaOrderItemEntityCopyWith<$Res> implements $SallaOrderItemEntityCopyWith<$Res> {
  factory _$SallaOrderItemEntityCopyWith(_SallaOrderItemEntity value, $Res Function(_SallaOrderItemEntity) _then) = __$SallaOrderItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? printedName, String? productName, String? quantity, String? distributionCountry, List<UnitEntity>? units, String? additions
});




}
/// @nodoc
class __$SallaOrderItemEntityCopyWithImpl<$Res>
    implements _$SallaOrderItemEntityCopyWith<$Res> {
  __$SallaOrderItemEntityCopyWithImpl(this._self, this._then);

  final _SallaOrderItemEntity _self;
  final $Res Function(_SallaOrderItemEntity) _then;

/// Create a copy of SallaOrderItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? printedName = freezed,Object? productName = freezed,Object? quantity = freezed,Object? distributionCountry = freezed,Object? units = freezed,Object? additions = freezed,}) {
  return _then(_SallaOrderItemEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,printedName: freezed == printedName ? _self.printedName : printedName // ignore: cast_nullable_to_non_nullable
as String?,productName: freezed == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String?,distributionCountry: freezed == distributionCountry ? _self.distributionCountry : distributionCountry // ignore: cast_nullable_to_non_nullable
as String?,units: freezed == units ? _self._units : units // ignore: cast_nullable_to_non_nullable
as List<UnitEntity>?,additions: freezed == additions ? _self.additions : additions // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ValueEntity {

 String? get id; String? get name;
/// Create a copy of ValueEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueEntityCopyWith<ValueEntity> get copyWith => _$ValueEntityCopyWithImpl<ValueEntity>(this as ValueEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ValueEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ValueEntityCopyWith<$Res>  {
  factory $ValueEntityCopyWith(ValueEntity value, $Res Function(ValueEntity) _then) = _$ValueEntityCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$ValueEntityCopyWithImpl<$Res>
    implements $ValueEntityCopyWith<$Res> {
  _$ValueEntityCopyWithImpl(this._self, this._then);

  final ValueEntity _self;
  final $Res Function(ValueEntity) _then;

/// Create a copy of ValueEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ValueEntity].
extension ValueEntityPatterns on ValueEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ValueEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValueEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ValueEntity value)  $default,){
final _that = this;
switch (_that) {
case _ValueEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ValueEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ValueEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValueEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ValueEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ValueEntity() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _ValueEntity implements ValueEntity {
  const _ValueEntity({this.id, this.name});
  

@override final  String? id;
@override final  String? name;

/// Create a copy of ValueEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValueEntityCopyWith<_ValueEntity> get copyWith => __$ValueEntityCopyWithImpl<_ValueEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValueEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ValueEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ValueEntityCopyWith<$Res> implements $ValueEntityCopyWith<$Res> {
  factory _$ValueEntityCopyWith(_ValueEntity value, $Res Function(_ValueEntity) _then) = __$ValueEntityCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$ValueEntityCopyWithImpl<$Res>
    implements _$ValueEntityCopyWith<$Res> {
  __$ValueEntityCopyWithImpl(this._self, this._then);

  final _ValueEntity _self;
  final $Res Function(_ValueEntity) _then;

/// Create a copy of ValueEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ValueEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
