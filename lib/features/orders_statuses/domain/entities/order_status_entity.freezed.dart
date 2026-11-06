// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OrderStatusEntity {

 int? get id; String? get name; String? get type; String? get slug; int? get sort; String? get message; String? get icon; bool? get isActive; Translations? get translations; OriginalEntity? get original; Color? get color;
/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderStatusEntityCopyWith<OrderStatusEntity> get copyWith => _$OrderStatusEntityCopyWithImpl<OrderStatusEntity>(this as OrderStatusEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OrderStatusEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderStatusEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.slug, _this.slug) || other.slug == _this.slug)&&(identical(other.sort, _this.sort) || other.sort == _this.sort)&&(identical(other.message, _this.message) || other.message == _this.message)&&(identical(other.icon, _this.icon) || other.icon == _this.icon)&&(identical(other.isActive, _this.isActive) || other.isActive == _this.isActive)&&(identical(other.translations, _this.translations) || other.translations == _this.translations)&&(identical(other.original, _this.original) || other.original == _this.original)&&(identical(other.color, _this.color) || other.color == _this.color));
}


@override
int get hashCode {
  final _this = this as OrderStatusEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.type,_this.slug,_this.sort,_this.message,_this.icon,_this.isActive,_this.translations,_this.original,_this.color);
}

@override
String toString() {
  final _this = this as OrderStatusEntity;
  return 'OrderStatusEntity(id: ${_this.id}, name: ${_this.name}, type: ${_this.type}, slug: ${_this.slug}, sort: ${_this.sort}, message: ${_this.message}, icon: ${_this.icon}, isActive: ${_this.isActive}, translations: ${_this.translations}, original: ${_this.original}, color: ${_this.color})';
}


}

/// @nodoc
abstract mixin class $OrderStatusEntityCopyWith<$Res>  {
  factory $OrderStatusEntityCopyWith(OrderStatusEntity value, $Res Function(OrderStatusEntity) _then) = _$OrderStatusEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? type, String? slug, int? sort, String? message, String? icon, bool? isActive, Translations? translations, OriginalEntity? original, Color? color
});


$TranslationsCopyWith<$Res>? get translations;$OriginalEntityCopyWith<$Res>? get original;

}
/// @nodoc
class _$OrderStatusEntityCopyWithImpl<$Res>
    implements $OrderStatusEntityCopyWith<$Res> {
  _$OrderStatusEntityCopyWithImpl(this._self, this._then);

  final OrderStatusEntity _self;
  final $Res Function(OrderStatusEntity) _then;

/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? sort = freezed,Object? message = freezed,Object? icon = freezed,Object? isActive = freezed,Object? translations = freezed,Object? original = freezed,Object? color = freezed,}) {
  return _then(OrderStatusEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as Translations?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as OriginalEntity?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}
/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TranslationsCopyWith<$Res>? get translations {
    if (_self.translations == null) {
    return null;
  }

  return $TranslationsCopyWith<$Res>(_self.translations!, (value) {
    return _then(_self.copyWith(translations: value));
  });
}/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalEntityCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $OriginalEntityCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderStatusEntity].
extension OrderStatusEntityPatterns on OrderStatusEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderStatusEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderStatusEntity value)  $default,){
final _that = this;
switch (_that) {
case _OrderStatusEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderStatusEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? type,  String? slug,  int? sort,  String? message,  String? icon,  bool? isActive,  Translations? translations,  OriginalEntity? original,  Color? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.translations,_that.original,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? type,  String? slug,  int? sort,  String? message,  String? icon,  bool? isActive,  Translations? translations,  OriginalEntity? original,  Color? color)  $default,) {final _that = this;
switch (_that) {
case _OrderStatusEntity():
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.translations,_that.original,_that.color);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? type,  String? slug,  int? sort,  String? message,  String? icon,  bool? isActive,  Translations? translations,  OriginalEntity? original,  Color? color)?  $default,) {final _that = this;
switch (_that) {
case _OrderStatusEntity() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.slug,_that.sort,_that.message,_that.icon,_that.isActive,_that.translations,_that.original,_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _OrderStatusEntity implements OrderStatusEntity {
  const _OrderStatusEntity({this.id, this.name, this.type, this.slug, this.sort, this.message, this.icon, this.isActive, this.translations, this.original, this.color});
  

@override final  int? id;
@override final  String? name;
@override final  String? type;
@override final  String? slug;
@override final  int? sort;
@override final  String? message;
@override final  String? icon;
@override final  bool? isActive;
@override final  Translations? translations;
@override final  OriginalEntity? original;
@override final  Color? color;

/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderStatusEntityCopyWith<_OrderStatusEntity> get copyWith => __$OrderStatusEntityCopyWithImpl<_OrderStatusEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderStatusEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.message, message) || other.message == message)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.translations, translations) || other.translations == translations)&&(identical(other.original, original) || other.original == original)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,type,slug,sort,message,icon,isActive,translations,original,color);
}

@override
String toString() {
    return 'OrderStatusEntity(id: $id, name: $name, type: $type, slug: $slug, sort: $sort, message: $message, icon: $icon, isActive: $isActive, translations: $translations, original: $original, color: $color)';
}


}

/// @nodoc
abstract mixin class _$OrderStatusEntityCopyWith<$Res> implements $OrderStatusEntityCopyWith<$Res> {
  factory _$OrderStatusEntityCopyWith(_OrderStatusEntity value, $Res Function(_OrderStatusEntity) _then) = __$OrderStatusEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? type, String? slug, int? sort, String? message, String? icon, bool? isActive, Translations? translations, OriginalEntity? original, Color? color
});


@override $TranslationsCopyWith<$Res>? get translations;@override $OriginalEntityCopyWith<$Res>? get original;

}
/// @nodoc
class __$OrderStatusEntityCopyWithImpl<$Res>
    implements _$OrderStatusEntityCopyWith<$Res> {
  __$OrderStatusEntityCopyWithImpl(this._self, this._then);

  final _OrderStatusEntity _self;
  final $Res Function(_OrderStatusEntity) _then;

/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? slug = freezed,Object? sort = freezed,Object? message = freezed,Object? icon = freezed,Object? isActive = freezed,Object? translations = freezed,Object? original = freezed,Object? color = freezed,}) {
  return _then(_OrderStatusEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,translations: freezed == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as Translations?,original: freezed == original ? _self.original : original // ignore: cast_nullable_to_non_nullable
as OriginalEntity?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as Color?,
  ));
}

/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TranslationsCopyWith<$Res>? get translations {
    if (_self.translations == null) {
    return null;
  }

  return $TranslationsCopyWith<$Res>(_self.translations!, (value) {
    return _then(_self.copyWith(translations: value));
  });
}/// Create a copy of OrderStatusEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OriginalEntityCopyWith<$Res>? get original {
    if (_self.original == null) {
    return null;
  }

  return $OriginalEntityCopyWith<$Res>(_self.original!, (value) {
    return _then(_self.copyWith(original: value));
  });
}
}

/// @nodoc
mixin _$OriginalEntity {

 int? get id; String? get name;
/// Create a copy of OriginalEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OriginalEntityCopyWith<OriginalEntity> get copyWith => _$OriginalEntityCopyWithImpl<OriginalEntity>(this as OriginalEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as OriginalEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OriginalEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}


@override
int get hashCode {
  final _this = this as OriginalEntity;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as OriginalEntity;
  return 'OriginalEntity(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $OriginalEntityCopyWith<$Res>  {
  factory $OriginalEntityCopyWith(OriginalEntity value, $Res Function(OriginalEntity) _then) = _$OriginalEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$OriginalEntityCopyWithImpl<$Res>
    implements $OriginalEntityCopyWith<$Res> {
  _$OriginalEntityCopyWithImpl(this._self, this._then);

  final OriginalEntity _self;
  final $Res Function(OriginalEntity) _then;

/// Create a copy of OriginalEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(OriginalEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OriginalEntity].
extension OriginalEntityPatterns on OriginalEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OriginalEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OriginalEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OriginalEntity value)  $default,){
final _that = this;
switch (_that) {
case _OriginalEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OriginalEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OriginalEntity() when $default != null:
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
case _OriginalEntity() when $default != null:
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
case _OriginalEntity():
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
case _OriginalEntity() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _OriginalEntity implements OriginalEntity {
  const _OriginalEntity({this.id, this.name});
  

@override final  int? id;
@override final  String? name;

/// Create a copy of OriginalEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OriginalEntityCopyWith<_OriginalEntity> get copyWith => __$OriginalEntityCopyWithImpl<_OriginalEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OriginalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'OriginalEntity(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$OriginalEntityCopyWith<$Res> implements $OriginalEntityCopyWith<$Res> {
  factory _$OriginalEntityCopyWith(_OriginalEntity value, $Res Function(_OriginalEntity) _then) = __$OriginalEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$OriginalEntityCopyWithImpl<$Res>
    implements _$OriginalEntityCopyWith<$Res> {
  __$OriginalEntityCopyWithImpl(this._self, this._then);

  final _OriginalEntity _self;
  final $Res Function(_OriginalEntity) _then;

/// Create a copy of OriginalEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_OriginalEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$Translations {

 Ar? get ar;
/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationsCopyWith<Translations> get copyWith => _$TranslationsCopyWithImpl<Translations>(this as Translations, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Translations;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Translations&&(identical(other.ar, _this.ar) || other.ar == _this.ar));
}


@override
int get hashCode {
  final _this = this as Translations;
  return Object.hash(runtimeType,_this.ar);
}

@override
String toString() {
  final _this = this as Translations;
  return 'Translations(ar: ${_this.ar})';
}


}

/// @nodoc
abstract mixin class $TranslationsCopyWith<$Res>  {
  factory $TranslationsCopyWith(Translations value, $Res Function(Translations) _then) = _$TranslationsCopyWithImpl;
@useResult
$Res call({
 Ar? ar
});


$ArCopyWith<$Res>? get ar;

}
/// @nodoc
class _$TranslationsCopyWithImpl<$Res>
    implements $TranslationsCopyWith<$Res> {
  _$TranslationsCopyWithImpl(this._self, this._then);

  final Translations _self;
  final $Res Function(Translations) _then;

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ar = freezed,}) {
  return _then(Translations(
ar: freezed == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as Ar?,
  ));
}
/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArCopyWith<$Res>? get ar {
    if (_self.ar == null) {
    return null;
  }

  return $ArCopyWith<$Res>(_self.ar!, (value) {
    return _then(_self.copyWith(ar: value));
  });
}
}


/// Adds pattern-matching-related methods to [Translations].
extension TranslationsPatterns on Translations {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Translations value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Translations() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Translations value)  $default,){
final _that = this;
switch (_that) {
case _Translations():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Translations value)?  $default,){
final _that = this;
switch (_that) {
case _Translations() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Ar? ar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Translations() when $default != null:
return $default(_that.ar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Ar? ar)  $default,) {final _that = this;
switch (_that) {
case _Translations():
return $default(_that.ar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Ar? ar)?  $default,) {final _that = this;
switch (_that) {
case _Translations() when $default != null:
return $default(_that.ar);case _:
  return null;

}
}

}

/// @nodoc


class _Translations implements Translations {
  const _Translations({this.ar});
  

@override final  Ar? ar;

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationsCopyWith<_Translations> get copyWith => __$TranslationsCopyWithImpl<_Translations>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Translations&&(identical(other.ar, ar) || other.ar == ar));
}


@override
int get hashCode {
    return Object.hash(runtimeType,ar);
}

@override
String toString() {
    return 'Translations(ar: $ar)';
}


}

/// @nodoc
abstract mixin class _$TranslationsCopyWith<$Res> implements $TranslationsCopyWith<$Res> {
  factory _$TranslationsCopyWith(_Translations value, $Res Function(_Translations) _then) = __$TranslationsCopyWithImpl;
@override @useResult
$Res call({
 Ar? ar
});


@override $ArCopyWith<$Res>? get ar;

}
/// @nodoc
class __$TranslationsCopyWithImpl<$Res>
    implements _$TranslationsCopyWith<$Res> {
  __$TranslationsCopyWithImpl(this._self, this._then);

  final _Translations _self;
  final $Res Function(_Translations) _then;

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ar = freezed,}) {
  return _then(_Translations(
ar: freezed == ar ? _self.ar : ar // ignore: cast_nullable_to_non_nullable
as Ar?,
  ));
}

/// Create a copy of Translations
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ArCopyWith<$Res>? get ar {
    if (_self.ar == null) {
    return null;
  }

  return $ArCopyWith<$Res>(_self.ar!, (value) {
    return _then(_self.copyWith(ar: value));
  });
}
}

/// @nodoc
mixin _$Ar {

 String? get name; String? get message;
/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArCopyWith<Ar> get copyWith => _$ArCopyWithImpl<Ar>(this as Ar, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as Ar;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ar&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.message, _this.message) || other.message == _this.message));
}


@override
int get hashCode {
  final _this = this as Ar;
  return Object.hash(runtimeType,_this.name,_this.message);
}

@override
String toString() {
  final _this = this as Ar;
  return 'Ar(name: ${_this.name}, message: ${_this.message})';
}


}

/// @nodoc
abstract mixin class $ArCopyWith<$Res>  {
  factory $ArCopyWith(Ar value, $Res Function(Ar) _then) = _$ArCopyWithImpl;
@useResult
$Res call({
 String? name, String? message
});




}
/// @nodoc
class _$ArCopyWithImpl<$Res>
    implements $ArCopyWith<$Res> {
  _$ArCopyWithImpl(this._self, this._then);

  final Ar _self;
  final $Res Function(Ar) _then;

/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? message = freezed,}) {
  return _then(Ar(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Ar].
extension ArPatterns on Ar {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ar value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ar() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ar value)  $default,){
final _that = this;
switch (_that) {
case _Ar():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ar value)?  $default,){
final _that = this;
switch (_that) {
case _Ar() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ar() when $default != null:
return $default(_that.name,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? message)  $default,) {final _that = this;
switch (_that) {
case _Ar():
return $default(_that.name,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _Ar() when $default != null:
return $default(_that.name,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Ar implements Ar {
  const _Ar({this.name, this.message});
  

@override final  String? name;
@override final  String? message;

/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArCopyWith<_Ar> get copyWith => __$ArCopyWithImpl<_Ar>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ar&&(identical(other.name, name) || other.name == name)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,message);
}

@override
String toString() {
    return 'Ar(name: $name, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ArCopyWith<$Res> implements $ArCopyWith<$Res> {
  factory _$ArCopyWith(_Ar value, $Res Function(_Ar) _then) = __$ArCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? message
});




}
/// @nodoc
class __$ArCopyWithImpl<$Res>
    implements _$ArCopyWith<$Res> {
  __$ArCopyWithImpl(this._self, this._then);

  final _Ar _self;
  final $Res Function(_Ar) _then;

/// Create a copy of Ar
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? message = freezed,}) {
  return _then(_Ar(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
