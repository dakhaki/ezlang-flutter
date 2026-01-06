// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'curriculum_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurriculumModel {

 List<EnglishLevelModel> get levels;
/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurriculumModelCopyWith<CurriculumModel> get copyWith => _$CurriculumModelCopyWithImpl<CurriculumModel>(this as CurriculumModel, _$identity);

  /// Serializes this CurriculumModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurriculumModel&&const DeepCollectionEquality().equals(other.levels, levels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(levels));

@override
String toString() {
  return 'CurriculumModel(levels: $levels)';
}


}

/// @nodoc
abstract mixin class $CurriculumModelCopyWith<$Res>  {
  factory $CurriculumModelCopyWith(CurriculumModel value, $Res Function(CurriculumModel) _then) = _$CurriculumModelCopyWithImpl;
@useResult
$Res call({
 List<EnglishLevelModel> levels
});




}
/// @nodoc
class _$CurriculumModelCopyWithImpl<$Res>
    implements $CurriculumModelCopyWith<$Res> {
  _$CurriculumModelCopyWithImpl(this._self, this._then);

  final CurriculumModel _self;
  final $Res Function(CurriculumModel) _then;

/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? levels = null,}) {
  return _then(_self.copyWith(
levels: null == levels ? _self.levels : levels // ignore: cast_nullable_to_non_nullable
as List<EnglishLevelModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CurriculumModel].
extension CurriculumModelPatterns on CurriculumModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurriculumModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurriculumModel value)  $default,){
final _that = this;
switch (_that) {
case _CurriculumModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurriculumModel value)?  $default,){
final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EnglishLevelModel> levels)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
return $default(_that.levels);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EnglishLevelModel> levels)  $default,) {final _that = this;
switch (_that) {
case _CurriculumModel():
return $default(_that.levels);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EnglishLevelModel> levels)?  $default,) {final _that = this;
switch (_that) {
case _CurriculumModel() when $default != null:
return $default(_that.levels);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurriculumModel implements CurriculumModel {
  const _CurriculumModel({required final  List<EnglishLevelModel> levels}): _levels = levels;
  factory _CurriculumModel.fromJson(Map<String, dynamic> json) => _$CurriculumModelFromJson(json);

 final  List<EnglishLevelModel> _levels;
@override List<EnglishLevelModel> get levels {
  if (_levels is EqualUnmodifiableListView) return _levels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_levels);
}


/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurriculumModelCopyWith<_CurriculumModel> get copyWith => __$CurriculumModelCopyWithImpl<_CurriculumModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurriculumModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurriculumModel&&const DeepCollectionEquality().equals(other._levels, _levels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_levels));

@override
String toString() {
  return 'CurriculumModel(levels: $levels)';
}


}

/// @nodoc
abstract mixin class _$CurriculumModelCopyWith<$Res> implements $CurriculumModelCopyWith<$Res> {
  factory _$CurriculumModelCopyWith(_CurriculumModel value, $Res Function(_CurriculumModel) _then) = __$CurriculumModelCopyWithImpl;
@override @useResult
$Res call({
 List<EnglishLevelModel> levels
});




}
/// @nodoc
class __$CurriculumModelCopyWithImpl<$Res>
    implements _$CurriculumModelCopyWith<$Res> {
  __$CurriculumModelCopyWithImpl(this._self, this._then);

  final _CurriculumModel _self;
  final $Res Function(_CurriculumModel) _then;

/// Create a copy of CurriculumModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? levels = null,}) {
  return _then(_CurriculumModel(
levels: null == levels ? _self._levels : levels // ignore: cast_nullable_to_non_nullable
as List<EnglishLevelModel>,
  ));
}


}


/// @nodoc
mixin _$EnglishLevelModel {

 String get id; String get title; String get cefrCode; String get description; String get imageUrl; List<TopicModel> get topics;
/// Create a copy of EnglishLevelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EnglishLevelModelCopyWith<EnglishLevelModel> get copyWith => _$EnglishLevelModelCopyWithImpl<EnglishLevelModel>(this as EnglishLevelModel, _$identity);

  /// Serializes this EnglishLevelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EnglishLevelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cefrCode, cefrCode) || other.cefrCode == cefrCode)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other.topics, topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,cefrCode,description,imageUrl,const DeepCollectionEquality().hash(topics));

@override
String toString() {
  return 'EnglishLevelModel(id: $id, title: $title, cefrCode: $cefrCode, description: $description, imageUrl: $imageUrl, topics: $topics)';
}


}

/// @nodoc
abstract mixin class $EnglishLevelModelCopyWith<$Res>  {
  factory $EnglishLevelModelCopyWith(EnglishLevelModel value, $Res Function(EnglishLevelModel) _then) = _$EnglishLevelModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String cefrCode, String description, String imageUrl, List<TopicModel> topics
});




}
/// @nodoc
class _$EnglishLevelModelCopyWithImpl<$Res>
    implements $EnglishLevelModelCopyWith<$Res> {
  _$EnglishLevelModelCopyWithImpl(this._self, this._then);

  final EnglishLevelModel _self;
  final $Res Function(EnglishLevelModel) _then;

/// Create a copy of EnglishLevelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? cefrCode = null,Object? description = null,Object? imageUrl = null,Object? topics = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cefrCode: null == cefrCode ? _self.cefrCode : cefrCode // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [EnglishLevelModel].
extension EnglishLevelModelPatterns on EnglishLevelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EnglishLevelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EnglishLevelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EnglishLevelModel value)  $default,){
final _that = this;
switch (_that) {
case _EnglishLevelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EnglishLevelModel value)?  $default,){
final _that = this;
switch (_that) {
case _EnglishLevelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String cefrCode,  String description,  String imageUrl,  List<TopicModel> topics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EnglishLevelModel() when $default != null:
return $default(_that.id,_that.title,_that.cefrCode,_that.description,_that.imageUrl,_that.topics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String cefrCode,  String description,  String imageUrl,  List<TopicModel> topics)  $default,) {final _that = this;
switch (_that) {
case _EnglishLevelModel():
return $default(_that.id,_that.title,_that.cefrCode,_that.description,_that.imageUrl,_that.topics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String cefrCode,  String description,  String imageUrl,  List<TopicModel> topics)?  $default,) {final _that = this;
switch (_that) {
case _EnglishLevelModel() when $default != null:
return $default(_that.id,_that.title,_that.cefrCode,_that.description,_that.imageUrl,_that.topics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EnglishLevelModel extends EnglishLevelModel {
  const _EnglishLevelModel({required this.id, required this.title, required this.cefrCode, required this.description, required this.imageUrl, required final  List<TopicModel> topics}): _topics = topics,super._();
  factory _EnglishLevelModel.fromJson(Map<String, dynamic> json) => _$EnglishLevelModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String cefrCode;
@override final  String description;
@override final  String imageUrl;
 final  List<TopicModel> _topics;
@override List<TopicModel> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of EnglishLevelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EnglishLevelModelCopyWith<_EnglishLevelModel> get copyWith => __$EnglishLevelModelCopyWithImpl<_EnglishLevelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EnglishLevelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EnglishLevelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cefrCode, cefrCode) || other.cefrCode == cefrCode)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._topics, _topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,cefrCode,description,imageUrl,const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'EnglishLevelModel(id: $id, title: $title, cefrCode: $cefrCode, description: $description, imageUrl: $imageUrl, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$EnglishLevelModelCopyWith<$Res> implements $EnglishLevelModelCopyWith<$Res> {
  factory _$EnglishLevelModelCopyWith(_EnglishLevelModel value, $Res Function(_EnglishLevelModel) _then) = __$EnglishLevelModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String cefrCode, String description, String imageUrl, List<TopicModel> topics
});




}
/// @nodoc
class __$EnglishLevelModelCopyWithImpl<$Res>
    implements _$EnglishLevelModelCopyWith<$Res> {
  __$EnglishLevelModelCopyWithImpl(this._self, this._then);

  final _EnglishLevelModel _self;
  final $Res Function(_EnglishLevelModel) _then;

/// Create a copy of EnglishLevelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? cefrCode = null,Object? description = null,Object? imageUrl = null,Object? topics = null,}) {
  return _then(_EnglishLevelModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cefrCode: null == cefrCode ? _self.cefrCode : cefrCode // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<TopicModel>,
  ));
}


}


/// @nodoc
mixin _$TopicModel {

 String get id; String get title; String get iconAsset; bool get isPremium; List<SubTopicModel> get subTopics;
/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicModelCopyWith<TopicModel> get copyWith => _$TopicModelCopyWithImpl<TopicModel>(this as TopicModel, _$identity);

  /// Serializes this TopicModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.iconAsset, iconAsset) || other.iconAsset == iconAsset)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&const DeepCollectionEquality().equals(other.subTopics, subTopics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,iconAsset,isPremium,const DeepCollectionEquality().hash(subTopics));

@override
String toString() {
  return 'TopicModel(id: $id, title: $title, iconAsset: $iconAsset, isPremium: $isPremium, subTopics: $subTopics)';
}


}

/// @nodoc
abstract mixin class $TopicModelCopyWith<$Res>  {
  factory $TopicModelCopyWith(TopicModel value, $Res Function(TopicModel) _then) = _$TopicModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String iconAsset, bool isPremium, List<SubTopicModel> subTopics
});




}
/// @nodoc
class _$TopicModelCopyWithImpl<$Res>
    implements $TopicModelCopyWith<$Res> {
  _$TopicModelCopyWithImpl(this._self, this._then);

  final TopicModel _self;
  final $Res Function(TopicModel) _then;

/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? iconAsset = null,Object? isPremium = null,Object? subTopics = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,iconAsset: null == iconAsset ? _self.iconAsset : iconAsset // ignore: cast_nullable_to_non_nullable
as String,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,subTopics: null == subTopics ? _self.subTopics : subTopics // ignore: cast_nullable_to_non_nullable
as List<SubTopicModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TopicModel].
extension TopicModelPatterns on TopicModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopicModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopicModel value)  $default,){
final _that = this;
switch (_that) {
case _TopicModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopicModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String iconAsset,  bool isPremium,  List<SubTopicModel> subTopics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
return $default(_that.id,_that.title,_that.iconAsset,_that.isPremium,_that.subTopics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String iconAsset,  bool isPremium,  List<SubTopicModel> subTopics)  $default,) {final _that = this;
switch (_that) {
case _TopicModel():
return $default(_that.id,_that.title,_that.iconAsset,_that.isPremium,_that.subTopics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String iconAsset,  bool isPremium,  List<SubTopicModel> subTopics)?  $default,) {final _that = this;
switch (_that) {
case _TopicModel() when $default != null:
return $default(_that.id,_that.title,_that.iconAsset,_that.isPremium,_that.subTopics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopicModel extends TopicModel {
  const _TopicModel({required this.id, required this.title, required this.iconAsset, this.isPremium = false, required final  List<SubTopicModel> subTopics}): _subTopics = subTopics,super._();
  factory _TopicModel.fromJson(Map<String, dynamic> json) => _$TopicModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String iconAsset;
@override@JsonKey() final  bool isPremium;
 final  List<SubTopicModel> _subTopics;
@override List<SubTopicModel> get subTopics {
  if (_subTopics is EqualUnmodifiableListView) return _subTopics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subTopics);
}


/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicModelCopyWith<_TopicModel> get copyWith => __$TopicModelCopyWithImpl<_TopicModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.iconAsset, iconAsset) || other.iconAsset == iconAsset)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&const DeepCollectionEquality().equals(other._subTopics, _subTopics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,iconAsset,isPremium,const DeepCollectionEquality().hash(_subTopics));

@override
String toString() {
  return 'TopicModel(id: $id, title: $title, iconAsset: $iconAsset, isPremium: $isPremium, subTopics: $subTopics)';
}


}

/// @nodoc
abstract mixin class _$TopicModelCopyWith<$Res> implements $TopicModelCopyWith<$Res> {
  factory _$TopicModelCopyWith(_TopicModel value, $Res Function(_TopicModel) _then) = __$TopicModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String iconAsset, bool isPremium, List<SubTopicModel> subTopics
});




}
/// @nodoc
class __$TopicModelCopyWithImpl<$Res>
    implements _$TopicModelCopyWith<$Res> {
  __$TopicModelCopyWithImpl(this._self, this._then);

  final _TopicModel _self;
  final $Res Function(_TopicModel) _then;

/// Create a copy of TopicModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? iconAsset = null,Object? isPremium = null,Object? subTopics = null,}) {
  return _then(_TopicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,iconAsset: null == iconAsset ? _self.iconAsset : iconAsset // ignore: cast_nullable_to_non_nullable
as String,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,subTopics: null == subTopics ? _self._subTopics : subTopics // ignore: cast_nullable_to_non_nullable
as List<SubTopicModel>,
  ));
}


}


/// @nodoc
mixin _$SubTopicModel {

 String get id; String get title; int get materialCount; int get exerciseCount;
/// Create a copy of SubTopicModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubTopicModelCopyWith<SubTopicModel> get copyWith => _$SubTopicModelCopyWithImpl<SubTopicModel>(this as SubTopicModel, _$identity);

  /// Serializes this SubTopicModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubTopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.materialCount, materialCount) || other.materialCount == materialCount)&&(identical(other.exerciseCount, exerciseCount) || other.exerciseCount == exerciseCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,materialCount,exerciseCount);

@override
String toString() {
  return 'SubTopicModel(id: $id, title: $title, materialCount: $materialCount, exerciseCount: $exerciseCount)';
}


}

/// @nodoc
abstract mixin class $SubTopicModelCopyWith<$Res>  {
  factory $SubTopicModelCopyWith(SubTopicModel value, $Res Function(SubTopicModel) _then) = _$SubTopicModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, int materialCount, int exerciseCount
});




}
/// @nodoc
class _$SubTopicModelCopyWithImpl<$Res>
    implements $SubTopicModelCopyWith<$Res> {
  _$SubTopicModelCopyWithImpl(this._self, this._then);

  final SubTopicModel _self;
  final $Res Function(SubTopicModel) _then;

/// Create a copy of SubTopicModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? materialCount = null,Object? exerciseCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,materialCount: null == materialCount ? _self.materialCount : materialCount // ignore: cast_nullable_to_non_nullable
as int,exerciseCount: null == exerciseCount ? _self.exerciseCount : exerciseCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SubTopicModel].
extension SubTopicModelPatterns on SubTopicModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubTopicModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubTopicModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubTopicModel value)  $default,){
final _that = this;
switch (_that) {
case _SubTopicModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubTopicModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubTopicModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  int materialCount,  int exerciseCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubTopicModel() when $default != null:
return $default(_that.id,_that.title,_that.materialCount,_that.exerciseCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  int materialCount,  int exerciseCount)  $default,) {final _that = this;
switch (_that) {
case _SubTopicModel():
return $default(_that.id,_that.title,_that.materialCount,_that.exerciseCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  int materialCount,  int exerciseCount)?  $default,) {final _that = this;
switch (_that) {
case _SubTopicModel() when $default != null:
return $default(_that.id,_that.title,_that.materialCount,_that.exerciseCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubTopicModel extends SubTopicModel {
  const _SubTopicModel({required this.id, required this.title, this.materialCount = 0, this.exerciseCount = 0}): super._();
  factory _SubTopicModel.fromJson(Map<String, dynamic> json) => _$SubTopicModelFromJson(json);

@override final  String id;
@override final  String title;
@override@JsonKey() final  int materialCount;
@override@JsonKey() final  int exerciseCount;

/// Create a copy of SubTopicModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubTopicModelCopyWith<_SubTopicModel> get copyWith => __$SubTopicModelCopyWithImpl<_SubTopicModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubTopicModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubTopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.materialCount, materialCount) || other.materialCount == materialCount)&&(identical(other.exerciseCount, exerciseCount) || other.exerciseCount == exerciseCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,materialCount,exerciseCount);

@override
String toString() {
  return 'SubTopicModel(id: $id, title: $title, materialCount: $materialCount, exerciseCount: $exerciseCount)';
}


}

/// @nodoc
abstract mixin class _$SubTopicModelCopyWith<$Res> implements $SubTopicModelCopyWith<$Res> {
  factory _$SubTopicModelCopyWith(_SubTopicModel value, $Res Function(_SubTopicModel) _then) = __$SubTopicModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, int materialCount, int exerciseCount
});




}
/// @nodoc
class __$SubTopicModelCopyWithImpl<$Res>
    implements _$SubTopicModelCopyWith<$Res> {
  __$SubTopicModelCopyWithImpl(this._self, this._then);

  final _SubTopicModel _self;
  final $Res Function(_SubTopicModel) _then;

/// Create a copy of SubTopicModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? materialCount = null,Object? exerciseCount = null,}) {
  return _then(_SubTopicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,materialCount: null == materialCount ? _self.materialCount : materialCount // ignore: cast_nullable_to_non_nullable
as int,exerciseCount: null == exerciseCount ? _self.exerciseCount : exerciseCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
