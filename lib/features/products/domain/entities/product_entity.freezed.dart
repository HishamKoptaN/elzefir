// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductEntity {

 String get id; String get name; String get title; String get description; String get price; String get priceUnit; bool get isFeatured; String get image; CategoryEntity get category; List<CookingMethodEntity> get cookingMethods;
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductEntityCopyWith<ProductEntity> get copyWith => _$ProductEntityCopyWithImpl<ProductEntity>(this as ProductEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ProductEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.priceUnit, _this.priceUnit) || other.priceUnit == _this.priceUnit)&&(identical(other.isFeatured, _this.isFeatured) || other.isFeatured == _this.isFeatured)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.category, _this.category) || other.category == _this.category)&&const DeepCollectionEquality().equals(other.cookingMethods, _this.cookingMethods));
}


@override
int get hashCode {
  final _this = this as ProductEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.title,_this.description,_this.price,_this.priceUnit,_this.isFeatured,_this.image,_this.category,const DeepCollectionEquality().hash(_this.cookingMethods));
}

@override
String toString() {
  final _this = this as ProductEntity;
  return 'ProductEntity(id: ${_this.id}, name: ${_this.name}, title: ${_this.title}, description: ${_this.description}, price: ${_this.price}, priceUnit: ${_this.priceUnit}, isFeatured: ${_this.isFeatured}, image: ${_this.image}, category: ${_this.category}, cookingMethods: ${_this.cookingMethods})';
}


}

/// @nodoc
abstract mixin class $ProductEntityCopyWith<$Res>  {
  factory $ProductEntityCopyWith(ProductEntity value, $Res Function(ProductEntity) _then) = _$ProductEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String title, String description, String price, String priceUnit, bool isFeatured, String image, CategoryEntity category, List<CookingMethodEntity> cookingMethods
});


$CategoryEntityCopyWith<$Res> get category;

}
/// @nodoc
class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._self, this._then);

  final ProductEntity _self;
  final $Res Function(ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? title = null,Object? description = null,Object? price = null,Object? priceUnit = null,Object? isFeatured = null,Object? image = null,Object? category = null,Object? cookingMethods = null,}) {
  return _then(ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,priceUnit: null == priceUnit ? _self.priceUnit : priceUnit // ignore: cast_nullable_to_non_nullable
as String,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,cookingMethods: null == cookingMethods ? _self.cookingMethods : cookingMethods // ignore: cast_nullable_to_non_nullable
as List<CookingMethodEntity>,
  ));
}
/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res> get category {
  
  return $CategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductEntity].
extension ProductEntityPatterns on ProductEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String title,  String description,  String price,  String priceUnit,  bool isFeatured,  String image,  CategoryEntity category,  List<CookingMethodEntity> cookingMethods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.priceUnit,_that.isFeatured,_that.image,_that.category,_that.cookingMethods);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String title,  String description,  String price,  String priceUnit,  bool isFeatured,  String image,  CategoryEntity category,  List<CookingMethodEntity> cookingMethods)  $default,) {final _that = this;
switch (_that) {
case _ProductEntity():
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.priceUnit,_that.isFeatured,_that.image,_that.category,_that.cookingMethods);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String title,  String description,  String price,  String priceUnit,  bool isFeatured,  String image,  CategoryEntity category,  List<CookingMethodEntity> cookingMethods)?  $default,) {final _that = this;
switch (_that) {
case _ProductEntity() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.priceUnit,_that.isFeatured,_that.image,_that.category,_that.cookingMethods);case _:
  return null;

}
}

}

/// @nodoc


class _ProductEntity extends ProductEntity {
  const _ProductEntity({this.id = '', this.name = '', this.title = '', this.description = '', this.price = '', this.priceUnit = '', this.isFeatured = false, this.image = '', this.category = const CategoryEntity(),  List<CookingMethodEntity> cookingMethods = const <CookingMethodEntity>[]}): _cookingMethods = cookingMethods,super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String price;
@override@JsonKey() final  String priceUnit;
@override@JsonKey() final  bool isFeatured;
@override@JsonKey() final  String image;
@override@JsonKey() final  CategoryEntity category;
 final  List<CookingMethodEntity> _cookingMethods;
@override@JsonKey() List<CookingMethodEntity> get cookingMethods {
  if (_cookingMethods is EqualUnmodifiableListView) return _cookingMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cookingMethods);
}


/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductEntityCopyWith<_ProductEntity> get copyWith => __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceUnit, priceUnit) || other.priceUnit == priceUnit)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.image, image) || other.image == image)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.cookingMethods, _cookingMethods));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,title,description,price,priceUnit,isFeatured,image,category,const DeepCollectionEquality().hash(_cookingMethods));
}

@override
String toString() {
    return 'ProductEntity(id: $id, name: $name, title: $title, description: $description, price: $price, priceUnit: $priceUnit, isFeatured: $isFeatured, image: $image, category: $category, cookingMethods: $cookingMethods)';
}


}

/// @nodoc
abstract mixin class _$ProductEntityCopyWith<$Res> implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(_ProductEntity value, $Res Function(_ProductEntity) _then) = __$ProductEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String title, String description, String price, String priceUnit, bool isFeatured, String image, CategoryEntity category, List<CookingMethodEntity> cookingMethods
});


@override $CategoryEntityCopyWith<$Res> get category;

}
/// @nodoc
class __$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(this._self, this._then);

  final _ProductEntity _self;
  final $Res Function(_ProductEntity) _then;

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? title = null,Object? description = null,Object? price = null,Object? priceUnit = null,Object? isFeatured = null,Object? image = null,Object? category = null,Object? cookingMethods = null,}) {
  return _then(_ProductEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,priceUnit: null == priceUnit ? _self.priceUnit : priceUnit // ignore: cast_nullable_to_non_nullable
as String,isFeatured: null == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryEntity,cookingMethods: null == cookingMethods ? _self._cookingMethods : cookingMethods // ignore: cast_nullable_to_non_nullable
as List<CookingMethodEntity>,
  ));
}

/// Create a copy of ProductEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryEntityCopyWith<$Res> get category {
  
  return $CategoryEntityCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

/// @nodoc
mixin _$CookingMethodEntity {

 String get id; String get name; String get title; String get description; String get price; String get image; bool get isDefault; bool get isMostPopular;
/// Create a copy of CookingMethodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CookingMethodEntityCopyWith<CookingMethodEntity> get copyWith => _$CookingMethodEntityCopyWithImpl<CookingMethodEntity>(this as CookingMethodEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CookingMethodEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CookingMethodEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.isDefault, _this.isDefault) || other.isDefault == _this.isDefault)&&(identical(other.isMostPopular, _this.isMostPopular) || other.isMostPopular == _this.isMostPopular));
}


@override
int get hashCode {
  final _this = this as CookingMethodEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.title,_this.description,_this.price,_this.image,_this.isDefault,_this.isMostPopular);
}

@override
String toString() {
  final _this = this as CookingMethodEntity;
  return 'CookingMethodEntity(id: ${_this.id}, name: ${_this.name}, title: ${_this.title}, description: ${_this.description}, price: ${_this.price}, image: ${_this.image}, isDefault: ${_this.isDefault}, isMostPopular: ${_this.isMostPopular})';
}


}

/// @nodoc
abstract mixin class $CookingMethodEntityCopyWith<$Res>  {
  factory $CookingMethodEntityCopyWith(CookingMethodEntity value, $Res Function(CookingMethodEntity) _then) = _$CookingMethodEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String title, String description, String price, String image, bool isDefault, bool isMostPopular
});




}
/// @nodoc
class _$CookingMethodEntityCopyWithImpl<$Res>
    implements $CookingMethodEntityCopyWith<$Res> {
  _$CookingMethodEntityCopyWithImpl(this._self, this._then);

  final CookingMethodEntity _self;
  final $Res Function(CookingMethodEntity) _then;

/// Create a copy of CookingMethodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? title = null,Object? description = null,Object? price = null,Object? image = null,Object? isDefault = null,Object? isMostPopular = null,}) {
  return _then(CookingMethodEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,isMostPopular: null == isMostPopular ? _self.isMostPopular : isMostPopular // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CookingMethodEntity].
extension CookingMethodEntityPatterns on CookingMethodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CookingMethodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CookingMethodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CookingMethodEntity value)  $default,){
final _that = this;
switch (_that) {
case _CookingMethodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CookingMethodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CookingMethodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String title,  String description,  String price,  String image,  bool isDefault,  bool isMostPopular)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CookingMethodEntity() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.image,_that.isDefault,_that.isMostPopular);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String title,  String description,  String price,  String image,  bool isDefault,  bool isMostPopular)  $default,) {final _that = this;
switch (_that) {
case _CookingMethodEntity():
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.image,_that.isDefault,_that.isMostPopular);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String title,  String description,  String price,  String image,  bool isDefault,  bool isMostPopular)?  $default,) {final _that = this;
switch (_that) {
case _CookingMethodEntity() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.image,_that.isDefault,_that.isMostPopular);case _:
  return null;

}
}

}

/// @nodoc


class _CookingMethodEntity implements CookingMethodEntity {
  const _CookingMethodEntity({this.id = '', this.name = '', this.title = '', this.description = '', this.price = '', this.image = '', this.isDefault = false, this.isMostPopular = false});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String price;
@override@JsonKey() final  String image;
@override@JsonKey() final  bool isDefault;
@override@JsonKey() final  bool isMostPopular;

/// Create a copy of CookingMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CookingMethodEntityCopyWith<_CookingMethodEntity> get copyWith => __$CookingMethodEntityCopyWithImpl<_CookingMethodEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CookingMethodEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.isMostPopular, isMostPopular) || other.isMostPopular == isMostPopular));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,title,description,price,image,isDefault,isMostPopular);
}

@override
String toString() {
    return 'CookingMethodEntity(id: $id, name: $name, title: $title, description: $description, price: $price, image: $image, isDefault: $isDefault, isMostPopular: $isMostPopular)';
}


}

/// @nodoc
abstract mixin class _$CookingMethodEntityCopyWith<$Res> implements $CookingMethodEntityCopyWith<$Res> {
  factory _$CookingMethodEntityCopyWith(_CookingMethodEntity value, $Res Function(_CookingMethodEntity) _then) = __$CookingMethodEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String title, String description, String price, String image, bool isDefault, bool isMostPopular
});




}
/// @nodoc
class __$CookingMethodEntityCopyWithImpl<$Res>
    implements _$CookingMethodEntityCopyWith<$Res> {
  __$CookingMethodEntityCopyWithImpl(this._self, this._then);

  final _CookingMethodEntity _self;
  final $Res Function(_CookingMethodEntity) _then;

/// Create a copy of CookingMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? title = null,Object? description = null,Object? price = null,Object? image = null,Object? isDefault = null,Object? isMostPopular = null,}) {
  return _then(_CookingMethodEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,isMostPopular: null == isMostPopular ? _self.isMostPopular : isMostPopular // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AdditionEntity {

 String get id; String get name; String get title; String get description; String get price; String get image;
/// Create a copy of AdditionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdditionEntityCopyWith<AdditionEntity> get copyWith => _$AdditionEntityCopyWithImpl<AdditionEntity>(this as AdditionEntity, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AdditionEntity;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdditionEntity&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.image, _this.image) || other.image == _this.image));
}


@override
int get hashCode {
  final _this = this as AdditionEntity;
  return Object.hash(runtimeType,_this.id,_this.name,_this.title,_this.description,_this.price,_this.image);
}

@override
String toString() {
  final _this = this as AdditionEntity;
  return 'AdditionEntity(id: ${_this.id}, name: ${_this.name}, title: ${_this.title}, description: ${_this.description}, price: ${_this.price}, image: ${_this.image})';
}


}

/// @nodoc
abstract mixin class $AdditionEntityCopyWith<$Res>  {
  factory $AdditionEntityCopyWith(AdditionEntity value, $Res Function(AdditionEntity) _then) = _$AdditionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String title, String description, String price, String image
});




}
/// @nodoc
class _$AdditionEntityCopyWithImpl<$Res>
    implements $AdditionEntityCopyWith<$Res> {
  _$AdditionEntityCopyWithImpl(this._self, this._then);

  final AdditionEntity _self;
  final $Res Function(AdditionEntity) _then;

/// Create a copy of AdditionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? title = null,Object? description = null,Object? price = null,Object? image = null,}) {
  return _then(AdditionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdditionEntity].
extension AdditionEntityPatterns on AdditionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdditionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdditionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdditionEntity value)  $default,){
final _that = this;
switch (_that) {
case _AdditionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdditionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _AdditionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String title,  String description,  String price,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdditionEntity() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String title,  String description,  String price,  String image)  $default,) {final _that = this;
switch (_that) {
case _AdditionEntity():
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String title,  String description,  String price,  String image)?  $default,) {final _that = this;
switch (_that) {
case _AdditionEntity() when $default != null:
return $default(_that.id,_that.name,_that.title,_that.description,_that.price,_that.image);case _:
  return null;

}
}

}

/// @nodoc


class _AdditionEntity implements AdditionEntity {
  const _AdditionEntity({this.id = '', this.name = '', this.title = '', this.description = '', this.price = '', this.image = ''});
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey() final  String price;
@override@JsonKey() final  String image;

/// Create a copy of AdditionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdditionEntityCopyWith<_AdditionEntity> get copyWith => __$AdditionEntityCopyWithImpl<_AdditionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdditionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,name,title,description,price,image);
}

@override
String toString() {
    return 'AdditionEntity(id: $id, name: $name, title: $title, description: $description, price: $price, image: $image)';
}


}

/// @nodoc
abstract mixin class _$AdditionEntityCopyWith<$Res> implements $AdditionEntityCopyWith<$Res> {
  factory _$AdditionEntityCopyWith(_AdditionEntity value, $Res Function(_AdditionEntity) _then) = __$AdditionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String title, String description, String price, String image
});




}
/// @nodoc
class __$AdditionEntityCopyWithImpl<$Res>
    implements _$AdditionEntityCopyWith<$Res> {
  __$AdditionEntityCopyWithImpl(this._self, this._then);

  final _AdditionEntity _self;
  final $Res Function(_AdditionEntity) _then;

/// Create a copy of AdditionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? title = null,Object? description = null,Object? price = null,Object? image = null,}) {
  return _then(_AdditionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
