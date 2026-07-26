// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilterModel {

 int? get id; String? get name; String? get type; List<ValueModel>? get values;
/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FilterModelCopyWith<FilterModel> get copyWith => _$FilterModelCopyWithImpl<FilterModel>(this as FilterModel, _$identity);

  /// Serializes this FilterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FilterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.values, values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,const DeepCollectionEquality().hash(values));

@override
String toString() {
  return 'FilterModel(id: $id, name: $name, type: $type, values: $values)';
}


}

/// @nodoc
abstract mixin class $FilterModelCopyWith<$Res>  {
  factory $FilterModelCopyWith(FilterModel value, $Res Function(FilterModel) _then) = _$FilterModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? type, List<ValueModel>? values
});




}
/// @nodoc
class _$FilterModelCopyWithImpl<$Res>
    implements $FilterModelCopyWith<$Res> {
  _$FilterModelCopyWithImpl(this._self, this._then);

  final FilterModel _self;
  final $Res Function(FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? values = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as List<ValueModel>?,
  ));
}

}


/// Adds pattern-matching-related methods to [FilterModel].
extension FilterModelPatterns on FilterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FilterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FilterModel value)  $default,){
final _that = this;
switch (_that) {
case _FilterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FilterModel value)?  $default,){
final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? type,  List<ValueModel>? values)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.values);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? type,  List<ValueModel>? values)  $default,) {final _that = this;
switch (_that) {
case _FilterModel():
return $default(_that.id,_that.name,_that.type,_that.values);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? type,  List<ValueModel>? values)?  $default,) {final _that = this;
switch (_that) {
case _FilterModel() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.values);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FilterModel implements FilterModel {
  const _FilterModel({this.id, this.name, this.type, final  List<ValueModel>? values}): _values = values;
  factory _FilterModel.fromJson(Map<String, dynamic> json) => _$FilterModelFromJson(json);

@override final  int? id;
@override final  String? name;
@override final  String? type;
 final  List<ValueModel>? _values;
@override List<ValueModel>? get values {
  final value = _values;
  if (value == null) return null;
  if (_values is EqualUnmodifiableListView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterModelCopyWith<_FilterModel> get copyWith => __$FilterModelCopyWithImpl<_FilterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FilterModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._values, _values));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,const DeepCollectionEquality().hash(_values));

@override
String toString() {
  return 'FilterModel(id: $id, name: $name, type: $type, values: $values)';
}


}

/// @nodoc
abstract mixin class _$FilterModelCopyWith<$Res> implements $FilterModelCopyWith<$Res> {
  factory _$FilterModelCopyWith(_FilterModel value, $Res Function(_FilterModel) _then) = __$FilterModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? type, List<ValueModel>? values
});




}
/// @nodoc
class __$FilterModelCopyWithImpl<$Res>
    implements _$FilterModelCopyWith<$Res> {
  __$FilterModelCopyWithImpl(this._self, this._then);

  final _FilterModel _self;
  final $Res Function(_FilterModel) _then;

/// Create a copy of FilterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? type = freezed,Object? values = freezed,}) {
  return _then(_FilterModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,values: freezed == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as List<ValueModel>?,
  ));
}


}


/// @nodoc
mixin _$ValueModel {

 int? get id; String? get value;
/// Create a copy of ValueModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueModelCopyWith<ValueModel> get copyWith => _$ValueModelCopyWithImpl<ValueModel>(this as ValueModel, _$identity);

  /// Serializes this ValueModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value);

@override
String toString() {
  return 'ValueModel(id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class $ValueModelCopyWith<$Res>  {
  factory $ValueModelCopyWith(ValueModel value, $Res Function(ValueModel) _then) = _$ValueModelCopyWithImpl;
@useResult
$Res call({
 int? id, String? value
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? value = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValueModel() when $default != null:
return $default(_that.id,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? value)  $default,) {final _that = this;
switch (_that) {
case _ValueModel():
return $default(_that.id,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? value)?  $default,) {final _that = this;
switch (_that) {
case _ValueModel() when $default != null:
return $default(_that.id,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ValueModel implements ValueModel {
  const _ValueModel({this.id, this.value});
  factory _ValueModel.fromJson(Map<String, dynamic> json) => _$ValueModelFromJson(json);

@override final  int? id;
@override final  String? value;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValueModel&&(identical(other.id, id) || other.id == id)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,value);

@override
String toString() {
  return 'ValueModel(id: $id, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ValueModelCopyWith<$Res> implements $ValueModelCopyWith<$Res> {
  factory _$ValueModelCopyWith(_ValueModel value, $Res Function(_ValueModel) _then) = __$ValueModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? value
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? value = freezed,}) {
  return _then(_ValueModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
