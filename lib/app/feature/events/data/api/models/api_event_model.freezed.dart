// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiEventModel {
  String get id => throw _privateConstructorUsedError;
  String get idCreator => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get placeUrl => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiEventModelCopyWith<ApiEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEventModelCopyWith<$Res> {
  factory $ApiEventModelCopyWith(
          ApiEventModel value, $Res Function(ApiEventModel) then) =
      _$ApiEventModelCopyWithImpl<$Res, ApiEventModel>;
  @useResult
  $Res call(
      {String id,
      String idCreator,
      String title,
      String imagePath,
      String text,
      String placeUrl,
      String time,
      List<String> tags});
}

/// @nodoc
class _$ApiEventModelCopyWithImpl<$Res, $Val extends ApiEventModel>
    implements $ApiEventModelCopyWith<$Res> {
  _$ApiEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idCreator = null,
    Object? title = null,
    Object? imagePath = null,
    Object? text = null,
    Object? placeUrl = null,
    Object? time = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idCreator: null == idCreator
          ? _value.idCreator
          : idCreator // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      placeUrl: null == placeUrl
          ? _value.placeUrl
          : placeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiEventModelImplCopyWith<$Res>
    implements $ApiEventModelCopyWith<$Res> {
  factory _$$ApiEventModelImplCopyWith(
          _$ApiEventModelImpl value, $Res Function(_$ApiEventModelImpl) then) =
      __$$ApiEventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String idCreator,
      String title,
      String imagePath,
      String text,
      String placeUrl,
      String time,
      List<String> tags});
}

/// @nodoc
class __$$ApiEventModelImplCopyWithImpl<$Res>
    extends _$ApiEventModelCopyWithImpl<$Res, _$ApiEventModelImpl>
    implements _$$ApiEventModelImplCopyWith<$Res> {
  __$$ApiEventModelImplCopyWithImpl(
      _$ApiEventModelImpl _value, $Res Function(_$ApiEventModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? idCreator = null,
    Object? title = null,
    Object? imagePath = null,
    Object? text = null,
    Object? placeUrl = null,
    Object? time = null,
    Object? tags = null,
  }) {
    return _then(_$ApiEventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      idCreator: null == idCreator
          ? _value.idCreator
          : idCreator // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      placeUrl: null == placeUrl
          ? _value.placeUrl
          : placeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ApiEventModelImpl implements _ApiEventModel {
  const _$ApiEventModelImpl(
      {required this.id,
      required this.idCreator,
      required this.title,
      required this.imagePath,
      required this.text,
      required this.placeUrl,
      required this.time,
      required final List<String> tags})
      : _tags = tags;

  @override
  final String id;
  @override
  final String idCreator;
  @override
  final String title;
  @override
  final String imagePath;
  @override
  final String text;
  @override
  final String placeUrl;
  @override
  final String time;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'ApiEventModel(id: $id, idCreator: $idCreator, title: $title, imagePath: $imagePath, text: $text, placeUrl: $placeUrl, time: $time, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiEventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.idCreator, idCreator) ||
                other.idCreator == idCreator) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.placeUrl, placeUrl) ||
                other.placeUrl == placeUrl) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, idCreator, title, imagePath,
      text, placeUrl, time, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiEventModelImplCopyWith<_$ApiEventModelImpl> get copyWith =>
      __$$ApiEventModelImplCopyWithImpl<_$ApiEventModelImpl>(this, _$identity);
}

abstract class _ApiEventModel implements ApiEventModel {
  const factory _ApiEventModel(
      {required final String id,
      required final String idCreator,
      required final String title,
      required final String imagePath,
      required final String text,
      required final String placeUrl,
      required final String time,
      required final List<String> tags}) = _$ApiEventModelImpl;

  @override
  String get id;
  @override
  String get idCreator;
  @override
  String get title;
  @override
  String get imagePath;
  @override
  String get text;
  @override
  String get placeUrl;
  @override
  String get time;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$ApiEventModelImplCopyWith<_$ApiEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
