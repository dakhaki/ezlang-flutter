// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LessonContentModel {

 String get id; List<LearningMaterialModel> get materials; List<ExerciseModel> get exercises;
/// Create a copy of LessonContentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LessonContentModelCopyWith<LessonContentModel> get copyWith => _$LessonContentModelCopyWithImpl<LessonContentModel>(this as LessonContentModel, _$identity);

  /// Serializes this LessonContentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LessonContentModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.materials, materials)&&const DeepCollectionEquality().equals(other.exercises, exercises));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(materials),const DeepCollectionEquality().hash(exercises));

@override
String toString() {
  return 'LessonContentModel(id: $id, materials: $materials, exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class $LessonContentModelCopyWith<$Res>  {
  factory $LessonContentModelCopyWith(LessonContentModel value, $Res Function(LessonContentModel) _then) = _$LessonContentModelCopyWithImpl;
@useResult
$Res call({
 String id, List<LearningMaterialModel> materials, List<ExerciseModel> exercises
});




}
/// @nodoc
class _$LessonContentModelCopyWithImpl<$Res>
    implements $LessonContentModelCopyWith<$Res> {
  _$LessonContentModelCopyWithImpl(this._self, this._then);

  final LessonContentModel _self;
  final $Res Function(LessonContentModel) _then;

/// Create a copy of LessonContentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? materials = null,Object? exercises = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,materials: null == materials ? _self.materials : materials // ignore: cast_nullable_to_non_nullable
as List<LearningMaterialModel>,exercises: null == exercises ? _self.exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [LessonContentModel].
extension LessonContentModelPatterns on LessonContentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LessonContentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LessonContentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LessonContentModel value)  $default,){
final _that = this;
switch (_that) {
case _LessonContentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LessonContentModel value)?  $default,){
final _that = this;
switch (_that) {
case _LessonContentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<LearningMaterialModel> materials,  List<ExerciseModel> exercises)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LessonContentModel() when $default != null:
return $default(_that.id,_that.materials,_that.exercises);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<LearningMaterialModel> materials,  List<ExerciseModel> exercises)  $default,) {final _that = this;
switch (_that) {
case _LessonContentModel():
return $default(_that.id,_that.materials,_that.exercises);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<LearningMaterialModel> materials,  List<ExerciseModel> exercises)?  $default,) {final _that = this;
switch (_that) {
case _LessonContentModel() when $default != null:
return $default(_that.id,_that.materials,_that.exercises);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LessonContentModel extends LessonContentModel {
  const _LessonContentModel({required this.id, final  List<LearningMaterialModel> materials = const [], required final  List<ExerciseModel> exercises}): _materials = materials,_exercises = exercises,super._();
  factory _LessonContentModel.fromJson(Map<String, dynamic> json) => _$LessonContentModelFromJson(json);

@override final  String id;
 final  List<LearningMaterialModel> _materials;
@override@JsonKey() List<LearningMaterialModel> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

 final  List<ExerciseModel> _exercises;
@override List<ExerciseModel> get exercises {
  if (_exercises is EqualUnmodifiableListView) return _exercises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_exercises);
}


/// Create a copy of LessonContentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LessonContentModelCopyWith<_LessonContentModel> get copyWith => __$LessonContentModelCopyWithImpl<_LessonContentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LessonContentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LessonContentModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._materials, _materials)&&const DeepCollectionEquality().equals(other._exercises, _exercises));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_materials),const DeepCollectionEquality().hash(_exercises));

@override
String toString() {
  return 'LessonContentModel(id: $id, materials: $materials, exercises: $exercises)';
}


}

/// @nodoc
abstract mixin class _$LessonContentModelCopyWith<$Res> implements $LessonContentModelCopyWith<$Res> {
  factory _$LessonContentModelCopyWith(_LessonContentModel value, $Res Function(_LessonContentModel) _then) = __$LessonContentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, List<LearningMaterialModel> materials, List<ExerciseModel> exercises
});




}
/// @nodoc
class __$LessonContentModelCopyWithImpl<$Res>
    implements _$LessonContentModelCopyWith<$Res> {
  __$LessonContentModelCopyWithImpl(this._self, this._then);

  final _LessonContentModel _self;
  final $Res Function(_LessonContentModel) _then;

/// Create a copy of LessonContentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? materials = null,Object? exercises = null,}) {
  return _then(_LessonContentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,materials: null == materials ? _self._materials : materials // ignore: cast_nullable_to_non_nullable
as List<LearningMaterialModel>,exercises: null == exercises ? _self._exercises : exercises // ignore: cast_nullable_to_non_nullable
as List<ExerciseModel>,
  ));
}


}

LearningMaterialModel _$LearningMaterialModelFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'video':
          return _VideoMaterialModel.fromJson(
            json
          );
                case 'article':
          return _ArticleMaterialModel.fromJson(
            json
          );
                case 'pdf':
          return _PdfMaterialModel.fromJson(
            json
          );
                case 'html':
          return _HtmlMaterialModel.fromJson(
            json
          );
                case 'audio':
          return _AudioMaterialModel.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'LearningMaterialModel',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$LearningMaterialModel {

 String get id; String get title;
/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LearningMaterialModelCopyWith<LearningMaterialModel> get copyWith => _$LearningMaterialModelCopyWithImpl<LearningMaterialModel>(this as LearningMaterialModel, _$identity);

  /// Serializes this LearningMaterialModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LearningMaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'LearningMaterialModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class $LearningMaterialModelCopyWith<$Res>  {
  factory $LearningMaterialModelCopyWith(LearningMaterialModel value, $Res Function(LearningMaterialModel) _then) = _$LearningMaterialModelCopyWithImpl;
@useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class _$LearningMaterialModelCopyWithImpl<$Res>
    implements $LearningMaterialModelCopyWith<$Res> {
  _$LearningMaterialModelCopyWithImpl(this._self, this._then);

  final LearningMaterialModel _self;
  final $Res Function(LearningMaterialModel) _then;

/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LearningMaterialModel].
extension LearningMaterialModelPatterns on LearningMaterialModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _VideoMaterialModel value)?  video,TResult Function( _ArticleMaterialModel value)?  article,TResult Function( _PdfMaterialModel value)?  pdf,TResult Function( _HtmlMaterialModel value)?  html,TResult Function( _AudioMaterialModel value)?  audio,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VideoMaterialModel() when video != null:
return video(_that);case _ArticleMaterialModel() when article != null:
return article(_that);case _PdfMaterialModel() when pdf != null:
return pdf(_that);case _HtmlMaterialModel() when html != null:
return html(_that);case _AudioMaterialModel() when audio != null:
return audio(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _VideoMaterialModel value)  video,required TResult Function( _ArticleMaterialModel value)  article,required TResult Function( _PdfMaterialModel value)  pdf,required TResult Function( _HtmlMaterialModel value)  html,required TResult Function( _AudioMaterialModel value)  audio,}){
final _that = this;
switch (_that) {
case _VideoMaterialModel():
return video(_that);case _ArticleMaterialModel():
return article(_that);case _PdfMaterialModel():
return pdf(_that);case _HtmlMaterialModel():
return html(_that);case _AudioMaterialModel():
return audio(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _VideoMaterialModel value)?  video,TResult? Function( _ArticleMaterialModel value)?  article,TResult? Function( _PdfMaterialModel value)?  pdf,TResult? Function( _HtmlMaterialModel value)?  html,TResult? Function( _AudioMaterialModel value)?  audio,}){
final _that = this;
switch (_that) {
case _VideoMaterialModel() when video != null:
return video(_that);case _ArticleMaterialModel() when article != null:
return article(_that);case _PdfMaterialModel() when pdf != null:
return pdf(_that);case _HtmlMaterialModel() when html != null:
return html(_that);case _AudioMaterialModel() when audio != null:
return audio(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String title,  String url)?  video,TResult Function( String id,  String title,  String content)?  article,TResult Function( String id,  String title,  String url)?  pdf,TResult Function( String id,  String title,  String content)?  html,TResult Function( String id,  String title,  String url)?  audio,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VideoMaterialModel() when video != null:
return video(_that.id,_that.title,_that.url);case _ArticleMaterialModel() when article != null:
return article(_that.id,_that.title,_that.content);case _PdfMaterialModel() when pdf != null:
return pdf(_that.id,_that.title,_that.url);case _HtmlMaterialModel() when html != null:
return html(_that.id,_that.title,_that.content);case _AudioMaterialModel() when audio != null:
return audio(_that.id,_that.title,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String title,  String url)  video,required TResult Function( String id,  String title,  String content)  article,required TResult Function( String id,  String title,  String url)  pdf,required TResult Function( String id,  String title,  String content)  html,required TResult Function( String id,  String title,  String url)  audio,}) {final _that = this;
switch (_that) {
case _VideoMaterialModel():
return video(_that.id,_that.title,_that.url);case _ArticleMaterialModel():
return article(_that.id,_that.title,_that.content);case _PdfMaterialModel():
return pdf(_that.id,_that.title,_that.url);case _HtmlMaterialModel():
return html(_that.id,_that.title,_that.content);case _AudioMaterialModel():
return audio(_that.id,_that.title,_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String title,  String url)?  video,TResult? Function( String id,  String title,  String content)?  article,TResult? Function( String id,  String title,  String url)?  pdf,TResult? Function( String id,  String title,  String content)?  html,TResult? Function( String id,  String title,  String url)?  audio,}) {final _that = this;
switch (_that) {
case _VideoMaterialModel() when video != null:
return video(_that.id,_that.title,_that.url);case _ArticleMaterialModel() when article != null:
return article(_that.id,_that.title,_that.content);case _PdfMaterialModel() when pdf != null:
return pdf(_that.id,_that.title,_that.url);case _HtmlMaterialModel() when html != null:
return html(_that.id,_that.title,_that.content);case _AudioMaterialModel() when audio != null:
return audio(_that.id,_that.title,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VideoMaterialModel extends LearningMaterialModel {
  const _VideoMaterialModel({required this.id, required this.title, required this.url, final  String? $type}): $type = $type ?? 'video',super._();
  factory _VideoMaterialModel.fromJson(Map<String, dynamic> json) => _$VideoMaterialModelFromJson(json);

@override final  String id;
@override final  String title;
 final  String url;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VideoMaterialModelCopyWith<_VideoMaterialModel> get copyWith => __$VideoMaterialModelCopyWithImpl<_VideoMaterialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VideoMaterialModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VideoMaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url);

@override
String toString() {
  return 'LearningMaterialModel.video(id: $id, title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$VideoMaterialModelCopyWith<$Res> implements $LearningMaterialModelCopyWith<$Res> {
  factory _$VideoMaterialModelCopyWith(_VideoMaterialModel value, $Res Function(_VideoMaterialModel) _then) = __$VideoMaterialModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String url
});




}
/// @nodoc
class __$VideoMaterialModelCopyWithImpl<$Res>
    implements _$VideoMaterialModelCopyWith<$Res> {
  __$VideoMaterialModelCopyWithImpl(this._self, this._then);

  final _VideoMaterialModel _self;
  final $Res Function(_VideoMaterialModel) _then;

/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? url = null,}) {
  return _then(_VideoMaterialModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ArticleMaterialModel extends LearningMaterialModel {
  const _ArticleMaterialModel({required this.id, required this.title, required this.content, final  String? $type}): $type = $type ?? 'article',super._();
  factory _ArticleMaterialModel.fromJson(Map<String, dynamic> json) => _$ArticleMaterialModelFromJson(json);

@override final  String id;
@override final  String title;
 final  String content;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticleMaterialModelCopyWith<_ArticleMaterialModel> get copyWith => __$ArticleMaterialModelCopyWithImpl<_ArticleMaterialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticleMaterialModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticleMaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content);

@override
String toString() {
  return 'LearningMaterialModel.article(id: $id, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$ArticleMaterialModelCopyWith<$Res> implements $LearningMaterialModelCopyWith<$Res> {
  factory _$ArticleMaterialModelCopyWith(_ArticleMaterialModel value, $Res Function(_ArticleMaterialModel) _then) = __$ArticleMaterialModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content
});




}
/// @nodoc
class __$ArticleMaterialModelCopyWithImpl<$Res>
    implements _$ArticleMaterialModelCopyWith<$Res> {
  __$ArticleMaterialModelCopyWithImpl(this._self, this._then);

  final _ArticleMaterialModel _self;
  final $Res Function(_ArticleMaterialModel) _then;

/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,}) {
  return _then(_ArticleMaterialModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _PdfMaterialModel extends LearningMaterialModel {
  const _PdfMaterialModel({required this.id, required this.title, required this.url, final  String? $type}): $type = $type ?? 'pdf',super._();
  factory _PdfMaterialModel.fromJson(Map<String, dynamic> json) => _$PdfMaterialModelFromJson(json);

@override final  String id;
@override final  String title;
 final  String url;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PdfMaterialModelCopyWith<_PdfMaterialModel> get copyWith => __$PdfMaterialModelCopyWithImpl<_PdfMaterialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PdfMaterialModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PdfMaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url);

@override
String toString() {
  return 'LearningMaterialModel.pdf(id: $id, title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PdfMaterialModelCopyWith<$Res> implements $LearningMaterialModelCopyWith<$Res> {
  factory _$PdfMaterialModelCopyWith(_PdfMaterialModel value, $Res Function(_PdfMaterialModel) _then) = __$PdfMaterialModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String url
});




}
/// @nodoc
class __$PdfMaterialModelCopyWithImpl<$Res>
    implements _$PdfMaterialModelCopyWith<$Res> {
  __$PdfMaterialModelCopyWithImpl(this._self, this._then);

  final _PdfMaterialModel _self;
  final $Res Function(_PdfMaterialModel) _then;

/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? url = null,}) {
  return _then(_PdfMaterialModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _HtmlMaterialModel extends LearningMaterialModel {
  const _HtmlMaterialModel({required this.id, required this.title, required this.content, final  String? $type}): $type = $type ?? 'html',super._();
  factory _HtmlMaterialModel.fromJson(Map<String, dynamic> json) => _$HtmlMaterialModelFromJson(json);

@override final  String id;
@override final  String title;
 final  String content;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HtmlMaterialModelCopyWith<_HtmlMaterialModel> get copyWith => __$HtmlMaterialModelCopyWithImpl<_HtmlMaterialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HtmlMaterialModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HtmlMaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content);

@override
String toString() {
  return 'LearningMaterialModel.html(id: $id, title: $title, content: $content)';
}


}

/// @nodoc
abstract mixin class _$HtmlMaterialModelCopyWith<$Res> implements $LearningMaterialModelCopyWith<$Res> {
  factory _$HtmlMaterialModelCopyWith(_HtmlMaterialModel value, $Res Function(_HtmlMaterialModel) _then) = __$HtmlMaterialModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String content
});




}
/// @nodoc
class __$HtmlMaterialModelCopyWithImpl<$Res>
    implements _$HtmlMaterialModelCopyWith<$Res> {
  __$HtmlMaterialModelCopyWithImpl(this._self, this._then);

  final _HtmlMaterialModel _self;
  final $Res Function(_HtmlMaterialModel) _then;

/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = null,}) {
  return _then(_HtmlMaterialModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _AudioMaterialModel extends LearningMaterialModel {
  const _AudioMaterialModel({required this.id, required this.title, required this.url, final  String? $type}): $type = $type ?? 'audio',super._();
  factory _AudioMaterialModel.fromJson(Map<String, dynamic> json) => _$AudioMaterialModelFromJson(json);

@override final  String id;
@override final  String title;
 final  String url;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AudioMaterialModelCopyWith<_AudioMaterialModel> get copyWith => __$AudioMaterialModelCopyWithImpl<_AudioMaterialModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AudioMaterialModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioMaterialModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,url);

@override
String toString() {
  return 'LearningMaterialModel.audio(id: $id, title: $title, url: $url)';
}


}

/// @nodoc
abstract mixin class _$AudioMaterialModelCopyWith<$Res> implements $LearningMaterialModelCopyWith<$Res> {
  factory _$AudioMaterialModelCopyWith(_AudioMaterialModel value, $Res Function(_AudioMaterialModel) _then) = __$AudioMaterialModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String url
});




}
/// @nodoc
class __$AudioMaterialModelCopyWithImpl<$Res>
    implements _$AudioMaterialModelCopyWith<$Res> {
  __$AudioMaterialModelCopyWithImpl(this._self, this._then);

  final _AudioMaterialModel _self;
  final $Res Function(_AudioMaterialModel) _then;

/// Create a copy of LearningMaterialModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? url = null,}) {
  return _then(_AudioMaterialModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
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
                case 'image_selection':
          return _ImageSelectionModel.fromJson(
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

 String get id; String get prompt; String? get imageUrl;
/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExerciseModelCopyWith<ExerciseModel> get copyWith => _$ExerciseModelCopyWithImpl<ExerciseModel>(this as ExerciseModel, _$identity);

  /// Serializes this ExerciseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExerciseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,imageUrl);

@override
String toString() {
  return 'ExerciseModel(id: $id, prompt: $prompt, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $ExerciseModelCopyWith<$Res>  {
  factory $ExerciseModelCopyWith(ExerciseModel value, $Res Function(ExerciseModel) _then) = _$ExerciseModelCopyWithImpl;
@useResult
$Res call({
 String id, String prompt, String? imageUrl
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? prompt = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MultipleChoiceModel value)?  multipleChoice,TResult Function( _TranslateSentenceModel value)?  translateSentence,TResult Function( _AudioMatchModel value)?  audioMatch,TResult Function( _ImageSelectionModel value)?  imageSelection,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that);case _ImageSelectionModel() when imageSelection != null:
return imageSelection(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MultipleChoiceModel value)  multipleChoice,required TResult Function( _TranslateSentenceModel value)  translateSentence,required TResult Function( _AudioMatchModel value)  audioMatch,required TResult Function( _ImageSelectionModel value)  imageSelection,}){
final _that = this;
switch (_that) {
case _MultipleChoiceModel():
return multipleChoice(_that);case _TranslateSentenceModel():
return translateSentence(_that);case _AudioMatchModel():
return audioMatch(_that);case _ImageSelectionModel():
return imageSelection(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MultipleChoiceModel value)?  multipleChoice,TResult? Function( _TranslateSentenceModel value)?  translateSentence,TResult? Function( _AudioMatchModel value)?  audioMatch,TResult? Function( _ImageSelectionModel value)?  imageSelection,}){
final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that);case _ImageSelectionModel() when imageSelection != null:
return imageSelection(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id,  String prompt,  String? imageUrl,  List<String> options,  int correctIndex)?  multipleChoice,TResult Function( String id,  String prompt,  String? imageUrl,  String sourceText,  String targetText)?  translateSentence,TResult Function( String id,  String prompt,  String? imageUrl,  String correctWord)?  audioMatch,TResult Function( String id,  String prompt,  String? imageUrl,  List<String> options,  int correctIndex)?  imageSelection,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that.id,_that.prompt,_that.imageUrl,_that.options,_that.correctIndex);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that.id,_that.prompt,_that.imageUrl,_that.sourceText,_that.targetText);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that.id,_that.prompt,_that.imageUrl,_that.correctWord);case _ImageSelectionModel() when imageSelection != null:
return imageSelection(_that.id,_that.prompt,_that.imageUrl,_that.options,_that.correctIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id,  String prompt,  String? imageUrl,  List<String> options,  int correctIndex)  multipleChoice,required TResult Function( String id,  String prompt,  String? imageUrl,  String sourceText,  String targetText)  translateSentence,required TResult Function( String id,  String prompt,  String? imageUrl,  String correctWord)  audioMatch,required TResult Function( String id,  String prompt,  String? imageUrl,  List<String> options,  int correctIndex)  imageSelection,}) {final _that = this;
switch (_that) {
case _MultipleChoiceModel():
return multipleChoice(_that.id,_that.prompt,_that.imageUrl,_that.options,_that.correctIndex);case _TranslateSentenceModel():
return translateSentence(_that.id,_that.prompt,_that.imageUrl,_that.sourceText,_that.targetText);case _AudioMatchModel():
return audioMatch(_that.id,_that.prompt,_that.imageUrl,_that.correctWord);case _ImageSelectionModel():
return imageSelection(_that.id,_that.prompt,_that.imageUrl,_that.options,_that.correctIndex);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id,  String prompt,  String? imageUrl,  List<String> options,  int correctIndex)?  multipleChoice,TResult? Function( String id,  String prompt,  String? imageUrl,  String sourceText,  String targetText)?  translateSentence,TResult? Function( String id,  String prompt,  String? imageUrl,  String correctWord)?  audioMatch,TResult? Function( String id,  String prompt,  String? imageUrl,  List<String> options,  int correctIndex)?  imageSelection,}) {final _that = this;
switch (_that) {
case _MultipleChoiceModel() when multipleChoice != null:
return multipleChoice(_that.id,_that.prompt,_that.imageUrl,_that.options,_that.correctIndex);case _TranslateSentenceModel() when translateSentence != null:
return translateSentence(_that.id,_that.prompt,_that.imageUrl,_that.sourceText,_that.targetText);case _AudioMatchModel() when audioMatch != null:
return audioMatch(_that.id,_that.prompt,_that.imageUrl,_that.correctWord);case _ImageSelectionModel() when imageSelection != null:
return imageSelection(_that.id,_that.prompt,_that.imageUrl,_that.options,_that.correctIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MultipleChoiceModel extends ExerciseModel {
  const _MultipleChoiceModel({required this.id, required this.prompt, this.imageUrl, required final  List<String> options, required this.correctIndex, final  String? $type}): _options = options,$type = $type ?? 'multiple_choice',super._();
  factory _MultipleChoiceModel.fromJson(Map<String, dynamic> json) => _$MultipleChoiceModelFromJson(json);

@override final  String id;
@override final  String prompt;
@override final  String? imageUrl;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MultipleChoiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.correctIndex, correctIndex) || other.correctIndex == correctIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,imageUrl,const DeepCollectionEquality().hash(_options),correctIndex);

@override
String toString() {
  return 'ExerciseModel.multipleChoice(id: $id, prompt: $prompt, imageUrl: $imageUrl, options: $options, correctIndex: $correctIndex)';
}


}

/// @nodoc
abstract mixin class _$MultipleChoiceModelCopyWith<$Res> implements $ExerciseModelCopyWith<$Res> {
  factory _$MultipleChoiceModelCopyWith(_MultipleChoiceModel value, $Res Function(_MultipleChoiceModel) _then) = __$MultipleChoiceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String prompt, String? imageUrl, List<String> options, int correctIndex
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prompt = null,Object? imageUrl = freezed,Object? options = null,Object? correctIndex = null,}) {
  return _then(_MultipleChoiceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,correctIndex: null == correctIndex ? _self.correctIndex : correctIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _TranslateSentenceModel extends ExerciseModel {
  const _TranslateSentenceModel({required this.id, required this.prompt, this.imageUrl, required this.sourceText, required this.targetText, final  String? $type}): $type = $type ?? 'translate_sentence',super._();
  factory _TranslateSentenceModel.fromJson(Map<String, dynamic> json) => _$TranslateSentenceModelFromJson(json);

@override final  String id;
@override final  String prompt;
@override final  String? imageUrl;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslateSentenceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.sourceText, sourceText) || other.sourceText == sourceText)&&(identical(other.targetText, targetText) || other.targetText == targetText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,imageUrl,sourceText,targetText);

@override
String toString() {
  return 'ExerciseModel.translateSentence(id: $id, prompt: $prompt, imageUrl: $imageUrl, sourceText: $sourceText, targetText: $targetText)';
}


}

/// @nodoc
abstract mixin class _$TranslateSentenceModelCopyWith<$Res> implements $ExerciseModelCopyWith<$Res> {
  factory _$TranslateSentenceModelCopyWith(_TranslateSentenceModel value, $Res Function(_TranslateSentenceModel) _then) = __$TranslateSentenceModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String prompt, String? imageUrl, String sourceText, String targetText
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prompt = null,Object? imageUrl = freezed,Object? sourceText = null,Object? targetText = null,}) {
  return _then(_TranslateSentenceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,sourceText: null == sourceText ? _self.sourceText : sourceText // ignore: cast_nullable_to_non_nullable
as String,targetText: null == targetText ? _self.targetText : targetText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _AudioMatchModel extends ExerciseModel {
  const _AudioMatchModel({required this.id, required this.prompt, this.imageUrl, required this.correctWord, final  String? $type}): $type = $type ?? 'audio_match',super._();
  factory _AudioMatchModel.fromJson(Map<String, dynamic> json) => _$AudioMatchModelFromJson(json);

@override final  String id;
@override final  String prompt;
@override final  String? imageUrl;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AudioMatchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.correctWord, correctWord) || other.correctWord == correctWord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,imageUrl,correctWord);

@override
String toString() {
  return 'ExerciseModel.audioMatch(id: $id, prompt: $prompt, imageUrl: $imageUrl, correctWord: $correctWord)';
}


}

/// @nodoc
abstract mixin class _$AudioMatchModelCopyWith<$Res> implements $ExerciseModelCopyWith<$Res> {
  factory _$AudioMatchModelCopyWith(_AudioMatchModel value, $Res Function(_AudioMatchModel) _then) = __$AudioMatchModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String prompt, String? imageUrl, String correctWord
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prompt = null,Object? imageUrl = freezed,Object? correctWord = null,}) {
  return _then(_AudioMatchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,correctWord: null == correctWord ? _self.correctWord : correctWord // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class _ImageSelectionModel extends ExerciseModel {
  const _ImageSelectionModel({required this.id, required this.prompt, this.imageUrl, required final  List<String> options, required this.correctIndex, final  String? $type}): _options = options,$type = $type ?? 'image_selection',super._();
  factory _ImageSelectionModel.fromJson(Map<String, dynamic> json) => _$ImageSelectionModelFromJson(json);

@override final  String id;
@override final  String prompt;
@override final  String? imageUrl;
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
_$ImageSelectionModelCopyWith<_ImageSelectionModel> get copyWith => __$ImageSelectionModelCopyWithImpl<_ImageSelectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ImageSelectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImageSelectionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.correctIndex, correctIndex) || other.correctIndex == correctIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,prompt,imageUrl,const DeepCollectionEquality().hash(_options),correctIndex);

@override
String toString() {
  return 'ExerciseModel.imageSelection(id: $id, prompt: $prompt, imageUrl: $imageUrl, options: $options, correctIndex: $correctIndex)';
}


}

/// @nodoc
abstract mixin class _$ImageSelectionModelCopyWith<$Res> implements $ExerciseModelCopyWith<$Res> {
  factory _$ImageSelectionModelCopyWith(_ImageSelectionModel value, $Res Function(_ImageSelectionModel) _then) = __$ImageSelectionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String prompt, String? imageUrl, List<String> options, int correctIndex
});




}
/// @nodoc
class __$ImageSelectionModelCopyWithImpl<$Res>
    implements _$ImageSelectionModelCopyWith<$Res> {
  __$ImageSelectionModelCopyWithImpl(this._self, this._then);

  final _ImageSelectionModel _self;
  final $Res Function(_ImageSelectionModel) _then;

/// Create a copy of ExerciseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? prompt = null,Object? imageUrl = freezed,Object? options = null,Object? correctIndex = null,}) {
  return _then(_ImageSelectionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>,correctIndex: null == correctIndex ? _self.correctIndex : correctIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
