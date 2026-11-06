// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderStatusModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;@JsonKey(name: "type") String? get type;@JsonKey(name: "slug") String? get slug;@JsonKey(name: "sort") int? get sort;@JsonKey(name: "message") String? get message;@JsonKey(name: "icon") String? get icon;@JsonKey(name: "is_active") bool? get isActive;@JsonKey(name: 'color') String? get color;@JsonKey(name: 'original') OriginalModel? get original;
/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusModelCopyWith<OrderStatusModel> get copyWith => _$OrderStatusModelCopyWithImpl<OrderStatusModel>(this as OrderStatusModel, _$identity);

  /// Serializes this OrderStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OrderStatusModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.sort, _this.sort) || other.sort == _this.sort)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.original, _this.original) || other.original == _this.original));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OrderStatusModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.type,_this.slug,_this.sort,_this.message,_this.icon,_this.isActive,_this.color,_this.original);
}

@override
String toString() {
  final _this = this as OrderStatusModel;
  return 'OrderStatusModel(id: ${_this.id}, name: ${_this.name}, type: ${_this.type}, slug: ${_this.slug}, sort: ${_this.sort}, message: ${_this.message}, icon: ${_this.icon}, isActive: ${_this.isActive}, color: ${_this.color}, original: ${_this.original})';
}


}

/// @nodoc
abstract mixin class $OrderStatusModelCopyWith<$Res>  {
  factory $OrderStatusModelCopyWith(OrderStatusModel value, $Res Function(OrderStatusModel) _then) = _$OrderStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "type") String? type,@JsonKey(name: "slug") String? slug,@JsonKey(name: "sort") int? sort,@JsonKey(name: "message") String? message,@JsonKey(name: "icon") String? icon,@JsonKey(name: "is_active") bool? isActive,@JsonKey(name: 'color') String? color,@JsonKey(name: 'original') OriginalModel? original
});


$OriginalModelCopyWith<$Res>? get original;

}
/// @nodoc
class _$OrderStatusModelCopyWithImpl<$Res>
    implements $OrderStatusModelCopyWith<$Res> {
  _$OrderStatusModelCopyWithImpl(this._self, this._then);

  final OrderStatusModel _self;
  final $Res Function(OrderStatusModel) _then;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? sort = freezed,Object? message = freezed,Object? icon = freezed,Object? isActive = freezed,Object? color = freezed,Object? original = freezed,}) {
  return _then(OrderStatusModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as OriginalModel?,
  ));
}
/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalModelCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $OriginalModelCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderStatusModel].
extension OrderStatusModelPatterns on OrderStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "type")  String? type, @JsonKey(name: "slug")  String? slug, @JsonKey(name: "sort")  int? sort, @JsonKey(name: "message")  String? message, @JsonKey(name: "icon")  String? icon, @JsonKey(name: "is_active")  bool? isActive, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'original')  OriginalModel? original)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.color,_that.original);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "type")  String? type, @JsonKey(name: "slug")  String? slug, @JsonKey(name: "sort")  int? sort, @JsonKey(name: "message")  String? message, @JsonKey(name: "icon")  String? icon, @JsonKey(name: "is_active")  bool? isActive, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'original')  OriginalModel? original)  $default,) {final _that = this;
switch (_that) {
case _OrderStatusModel():
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.color,_that.original);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name, @JsonKey(name: "type")  String? type, @JsonKey(name: "slug")  String? slug, @JsonKey(name: "sort")  int? sort, @JsonKey(name: "message")  String? message, @JsonKey(name: "icon")  String? icon, @JsonKey(name: "is_active")  bool? isActive, @JsonKey(name: 'color')  String? color, @JsonKey(name: 'original')  OriginalModel? original)?  $default,) {final _that = this;
switch (_that) {
case _OrderStatusModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.color,_that.original);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderStatusModel implements OrderStatusModel {
  const _OrderStatusModel({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name, @JsonKey(name: "type") this.type, @JsonKey(name: "slug") this.slug, @JsonKey(name: "sort") this.sort, @JsonKey(name: "message") this.message, @JsonKey(name: "icon") this.icon, @JsonKey(name: "is_active") this.isActive, @JsonKey(name: 'color') this.color, @JsonKey(name: 'original') this.original});
  factory _OrderStatusModel.fromJson(Map<String, dynamic> json) => _$OrderStatusModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "type") final  String? type;
@override@JsonKey(name: "slug") final  String? slug;
@override@JsonKey(name: "sort") final  int? sort;
@override@JsonKey(name: "message") final  String? message;
@override@JsonKey(name: "icon") final  String? icon;
@override@JsonKey(name: "is_active") final  bool? isActive;
@override@JsonKey(name: 'color') final  String? color;
@override@JsonKey(name: 'original') final  OriginalModel? original;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusModelCopyWith<_OrderStatusModel> get copyWith => __$OrderStatusModelCopyWithImpl<_OrderStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.message, message) || other.message == message)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.color, color) || other.color == color)&&(identical(other.original, original) || other.original == original));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,type,slug,sort,message,icon,isActive,color,original);
}

@override
String toString() {
    return 'OrderStatusModel(id: $id, name: $name, type: $type, slug: $slug, sort: $sort, message: $message, icon: $icon, isActive: $isActive, color: $color, original: $original)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusModelCopyWith<$Res> implements $OrderStatusModelCopyWith<$Res> {
  factory _$OrderStatusModelCopyWith(_OrderStatusModel value, $Res Function(_OrderStatusModel) _then) = __$OrderStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name,@JsonKey(name: "type") String? type,@JsonKey(name: "slug") String? slug,@JsonKey(name: "sort") int? sort,@JsonKey(name: "message") String? message,@JsonKey(name: "icon") String? icon,@JsonKey(name: "is_active") bool? isActive,@JsonKey(name: 'color') String? color,@JsonKey(name: 'original') OriginalModel? original
});


@override $OriginalModelCopyWith<$Res>? get original;

}
/// @nodoc
class __$OrderStatusModelCopyWithImpl<$Res>
    implements _$OrderStatusModelCopyWith<$Res> {
  __$OrderStatusModelCopyWithImpl(this._self, this._then);

  final _OrderStatusModel _self;
  final $Res Function(_OrderStatusModel) _then;

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? sort = freezed,Object? message = freezed,Object? icon = freezed,Object? isActive = freezed,Object? color = freezed,Object? original = freezed,}) {
  return _then(_OrderStatusModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as OriginalModel?,
  ));
}

/// Create a copy of OrderStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalModelCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $OriginalModelCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}


/// @nodoc
mixin _$OriginalModel {

@JsonKey(name: "id") int? get id;@JsonKey(name: "name") String? get name;
/// Create a copy of OriginalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OriginalModelCopyWith<OriginalModel> get copyWith => _$OriginalModelCopyWithImpl<OriginalModel>(this as OriginalModel, _$identity);

  /// Serializes this OriginalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OriginalModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OriginalModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OriginalModel;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as OriginalModel;
  return 'OriginalModel(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $OriginalModelCopyWith<$Res>  {
  factory $OriginalModelCopyWith(OriginalModel value, $Res Function(OriginalModel) _then) = _$OriginalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class _$OriginalModelCopyWithImpl<$Res>
    implements $OriginalModelCopyWith<$Res> {
  _$OriginalModelCopyWithImpl(this._self, this._then);

  final OriginalModel _self;
  final $Res Function(OriginalModel) _then;

/// Create a copy of OriginalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(OriginalModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OriginalModel].
extension OriginalModelPatterns on OriginalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OriginalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OriginalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OriginalModel value)  $default,){
final _that = this;
switch (_that) {
case _OriginalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OriginalModel value)?  $default,){
final _that = this;
switch (_that) {
case _OriginalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OriginalModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)  $default,) {final _that = this;
switch (_that) {
case _OriginalModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "id")  int? id, @JsonKey(name: "name")  String? name)?  $default,) {final _that = this;
switch (_that) {
case _OriginalModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OriginalModel implements OriginalModel {
  const _OriginalModel({@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});
  factory _OriginalModel.fromJson(Map<String, dynamic> json) => _$OriginalModelFromJson(json);

@override@JsonKey(name: "id") final  int? id;
@override@JsonKey(name: "name") final  String? name;

/// Create a copy of OriginalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OriginalModelCopyWith<_OriginalModel> get copyWith => __$OriginalModelCopyWithImpl<_OriginalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OriginalModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OriginalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'OriginalModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$OriginalModelCopyWith<$Res> implements $OriginalModelCopyWith<$Res> {
  factory _$OriginalModelCopyWith(_OriginalModel value, $Res Function(_OriginalModel) _then) = __$OriginalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "id") int? id,@JsonKey(name: "name") String? name
});




}
/// @nodoc
class __$OriginalModelCopyWithImpl<$Res>
    implements _$OriginalModelCopyWith<$Res> {
  __$OriginalModelCopyWithImpl(this._self, this._then);

  final _OriginalModel _self;
  final $Res Function(_OriginalModel) _then;

/// Create a copy of OriginalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_OriginalModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
