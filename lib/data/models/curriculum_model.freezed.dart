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

 String get id; String get title; List<ExerciseModel> get exercises;
/// Create a copy of SubTopicModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubTopicModelCopyWith<SubTopicModel> get copyWith => _$SubTopicModelCopyWithImpl<SubTopicModel>(this as SubTopicModel, _$identity);

  /// Serializes this SubTopicModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubTopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.exercises, exercises));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(exercises));

@override
String toString() {
  return 'SubTopicModel(id: $id, title: $title, exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class $SubTopicModelCopyWith<$Res>  {
  factory $SubTopicModelCopyWith(SubTopicModel value, $Res Function(SubTopicModel) _then) = _$SubTopicModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<ExerciseModel> exercises
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? exercises = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,exercises: null == exercises ? _self.exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseModel>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<ExerciseModel> exercises)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubTopicModel() when $default != null:
return $default(_that.id,_that.title,_that.exercises);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<ExerciseModel> exercises)  $default,) {final _that = this;
switch (_that) {
case _SubTopicModel():
return $default(_that.id,_that.title,_that.exercises);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<ExerciseModel> exercises)?  $default,) {final _that = this;
switch (_that) {
case _SubTopicModel() when $default != null:
return $default(_that.id,_that.title,_that.exercises);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubTopicModel extends SubTopicModel {
  const _SubTopicModel({required this.id, required this.title, required final  List<ExerciseModel> exercises}): _exercises = exercises,super._();
  factory _SubTopicModel.fromJson(Map<String, dynamic> json) => _$SubTopicModelFromJson(json);

@override final  String id;
@override final  String title;
 final  List<ExerciseModel> _exercises;
@override List<ExerciseModel> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubTopicModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._exercises, _exercises));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_exercises));

@override
String toString() {
  return 'SubTopicModel(id: $id, title: $title, exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class _$SubTopicModelCopyWith<$Res> implements $SubTopicModelCopyWith<$Res> {
  factory _$SubTopicModelCopyWith(_SubTopicModel value, $Res Function(_SubTopicModel) _then) = __$SubTopicModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<ExerciseModel> exercises
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? exercises = null,}) {
  return _then(_SubTopicModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseModel>,
  ));
}


}

ExerciseModel _$ExerciseModelFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'multiple_choice':
          return _MultipleChoiceModel.fromJson(
            json
          );
                case 'translate_sentence':
          return _TranslateSentenceModel.fromJson(
            json
          );
                case 'audio_match':
          return _AudioMatchModel.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'ExerciseModel',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$ExerciseModel {

 String get id; String get prompt;
/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseModelCopyWith<ExerciseModel> get copyWith => _$ExerciseModelCopyWithImpl<ExerciseModel>(this as ExerciseModel, _$identity);

  /// Serializes this ExerciseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt);

@override
String toString() {
  return 'ExerciseModel(id: $id, prompt: $prompt)';
}


}

/// @nodoc
abstract mixin class $ExerciseModelCopyWith<$Res>  {
  factory $ExerciseModelCopyWith(ExerciseModel value, $Res Function(ExerciseModel) _then) = _$ExerciseModelCopyWithImpl;
@useResult
$Res call({
 String id, String prompt
});




}
/// @nodoc
class _$ExerciseModelCopyWithImpl<$Res>
    implements $ExerciseModelCopyWith<$Res> {
  _$ExerciseModelCopyWithImpl(this._self, this._then);

  final ExerciseModel _self;
  final $Res Function(ExerciseModel) _then;

/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? prompt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ExerciseModel].
extension ExerciseModelPatterns on ExerciseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MultipleChoiceModel value)?  multipleChoice,TResult Function( _TranslateSentenceModel value)?  translateSentence,TResult Function( _AudioMatchModel value)?  audioMatch,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MultipleChoiceModel value)  multipleChoice,required TResult Function( _TranslateSentenceModel value)  translateSentence,required TResult Function( _AudioMatchModel value)  audioMatch,}){
final _that = this;
switch (_that) {
case _MultipleChoiceModel():
return multipleChoice(_that);case _TranslateSentenceModel():
return translateSentence(_that);case _AudioMatchModel():
return audioMatch(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MultipleChoiceModel value)?  multipleChoice,TResult? Function( _TranslateSentenceModel value)?  translateSentence,TResult? Function( _AudioMatchModel value)?  audioMatch,}){
final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String prompt,  List<String> options,  int correctIndex)?  multipleChoice,TResult Function( String id,  String prompt,  String sourceText,  String targetText)?  translateSentence,TResult Function( String id,  String prompt,  String correctWord)?  audioMatch,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that.id,_that.prompt,_that.options,_that.correctIndex);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that.id,_that.prompt,_that.sourceText,_that.targetText);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that.id,_that.prompt,_that.correctWord);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String prompt,  List<String> options,  int correctIndex)  multipleChoice,required TResult Function( String id,  String prompt,  String sourceText,  String targetText)  translateSentence,required TResult Function( String id,  String prompt,  String correctWord)  audioMatch,}) {final _that = this;
switch (_that) {
case _MultipleChoiceModel():
return multipleChoice(_that.id,_that.prompt,_that.options,_that.correctIndex);case _TranslateSentenceModel():
return translateSentence(_that.id,_that.prompt,_that.sourceText,_that.targetText);case _AudioMatchModel():
return audioMatch(_that.id,_that.prompt,_that.correctWord);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String prompt,  List<String> options,  int correctIndex)?  multipleChoice,TResult? Function( String id,  String prompt,  String sourceText,  String targetText)?  translateSentence,TResult? Function( String id,  String prompt,  String correctWord)?  audioMatch,}) {final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that.id,_that.prompt,_that.options,_that.correctIndex);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that.id,_that.prompt,_that.sourceText,_that.targetText);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that.id,_that.prompt,_that.correctWord);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MultipleChoiceModel extends ExerciseModel {
  const _MultipleChoiceModel({required this.id, required this.prompt, required final  List<String> options, required this.correctIndex, final  String? $type}): _options = options,$type = $type ?? 'multiple_choice',super._();
  factory _MultipleChoiceModel.fromJson(Map<String, dynamic> json) => _$MultipleChoiceModelFromJson(json);

@override final  String id;
@override final  String prompt;
 final  List<String> _options;
 List<String> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}

 final  int correctIndex;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MultipleChoiceModelCopyWith<_MultipleChoiceModel> get copyWith => __$MultipleChoiceModelCopyWithImpl<_MultipleChoiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MultipleChoiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultipleChoiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.correctIndex, correctIndex) || other.correctIndex == correctIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,const DeepCollectionEquality().hash(_options),correctIndex);

@override
String toString() {
  return 'ExerciseModel.multipleChoice(id: $id, prompt: $prompt, options: $options, correctIndex: $correctIndex)';
}


}

/// @nodoc
abstract mixin class _$MultipleChoiceModelCopyWith<$Res> implements $ExerciseModelCopyWith<$Res> {
  factory _$MultipleChoiceModelCopyWith(_MultipleChoiceModel value, $Res Function(_MultipleChoiceModel) _then) = __$MultipleChoiceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String prompt, List<String> options, int correctIndex
});




}
/// @nodoc
class __$MultipleChoiceModelCopyWithImpl<$Res>
    implements _$MultipleChoiceModelCopyWith<$Res> {
  __$MultipleChoiceModelCopyWithImpl(this._self, this._then);

  final _MultipleChoiceModel _self;
  final $Res Function(_MultipleChoiceModel) _then;

/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prompt = null,Object? options = null,Object? correctIndex = null,}) {
  return _then(_MultipleChoiceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,correctIndex: null == correctIndex ? _self.correctIndex : correctIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _TranslateSentenceModel extends ExerciseModel {
  const _TranslateSentenceModel({required this.id, required this.prompt, required this.sourceText, required this.targetText, final  String? $type}): $type = $type ?? 'translate_sentence',super._();
  factory _TranslateSentenceModel.fromJson(Map<String, dynamic> json) => _$TranslateSentenceModelFromJson(json);

@override final  String id;
@override final  String prompt;
 final  String sourceText;
 final  String targetText;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslateSentenceModelCopyWith<_TranslateSentenceModel> get copyWith => __$TranslateSentenceModelCopyWithImpl<_TranslateSentenceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslateSentenceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslateSentenceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.sourceText, sourceText) || other.sourceText == sourceText)&&(identical(other.targetText, targetText) || other.targetText == targetText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,sourceText,targetText);

@override
String toString() {
  return 'ExerciseModel.translateSentence(id: $id, prompt: $prompt, sourceText: $sourceText, targetText: $targetText)';
}


}

/// @nodoc
abstract mixin class _$TranslateSentenceModelCopyWith<$Res> implements $ExerciseModelCopyWith<$Res> {
  factory _$TranslateSentenceModelCopyWith(_TranslateSentenceModel value, $Res Function(_TranslateSentenceModel) _then) = __$TranslateSentenceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String prompt, String sourceText, String targetText
});




}
/// @nodoc
class __$TranslateSentenceModelCopyWithImpl<$Res>
    implements _$TranslateSentenceModelCopyWith<$Res> {
  __$TranslateSentenceModelCopyWithImpl(this._self, this._then);

  final _TranslateSentenceModel _self;
  final $Res Function(_TranslateSentenceModel) _then;

/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prompt = null,Object? sourceText = null,Object? targetText = null,}) {
  return _then(_TranslateSentenceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,sourceText: null == sourceText ? _self.sourceText : sourceText // ignore: cast_nullable_to_non_nullable
as String,targetText: null == targetText ? _self.targetText : targetText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _AudioMatchModel extends ExerciseModel {
  const _AudioMatchModel({required this.id, required this.prompt, required this.correctWord, final  String? $type}): $type = $type ?? 'audio_match',super._();
  factory _AudioMatchModel.fromJson(Map<String, dynamic> json) => _$AudioMatchModelFromJson(json);

@override final  String id;
@override final  String prompt;
 final  String correctWord;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioMatchModelCopyWith<_AudioMatchModel> get copyWith => __$AudioMatchModelCopyWithImpl<_AudioMatchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioMatchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioMatchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.correctWord, correctWord) || other.correctWord == correctWord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,correctWord);

@override
String toString() {
  return 'ExerciseModel.audioMatch(id: $id, prompt: $prompt, correctWord: $correctWord)';
}


}

/// @nodoc
abstract mixin class _$AudioMatchModelCopyWith<$Res> implements $ExerciseModelCopyWith<$Res> {
  factory _$AudioMatchModelCopyWith(_AudioMatchModel value, $Res Function(_AudioMatchModel) _then) = __$AudioMatchModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String prompt, String correctWord
});




}
/// @nodoc
class __$AudioMatchModelCopyWithImpl<$Res>
    implements _$AudioMatchModelCopyWith<$Res> {
  __$AudioMatchModelCopyWithImpl(this._self, this._then);

  final _AudioMatchModel _self;
  final $Res Function(_AudioMatchModel) _then;

/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prompt = null,Object? correctWord = null,}) {
  return _then(_AudioMatchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,correctWord: null == correctWord ? _self.correctWord : correctWord // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
