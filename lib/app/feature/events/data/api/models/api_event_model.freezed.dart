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

ApiEventModel _$ApiEventModelFromJson(Map<String, dynamic> json) {
  return _ApiEventModel.fromJson(json);
}

/// @nodoc
mixin _$ApiEventModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get placeUrl => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get teamId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      String title,
      String imagePath,
      String text,
      String placeUrl,
      String time,
      List<String> tags,
      String teamId});
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
    Object? title = null,
    Object? imagePath = null,
    Object? text = null,
    Object? placeUrl = null,
    Object? time = null,
    Object? tags = null,
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
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
      String title,
      String imagePath,
      String text,
      String placeUrl,
      String time,
      List<String> tags,
      String teamId});
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
    Object? title = null,
    Object? imagePath = null,
    Object? text = null,
    Object? placeUrl = null,
    Object? time = null,
    Object? tags = null,
    Object? teamId = null,
  }) {
    return _then(_$ApiEventModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiEventModelImpl implements _ApiEventModel {
  const _$ApiEventModelImpl(
      {required this.id,
      required this.title,
      required this.imagePath,
      required this.text,
      required this.placeUrl,
      required this.time,
      required final List<String> tags,
      required this.teamId})
      : _tags = tags;

  factory _$ApiEventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiEventModelImplFromJson(json);

  @override
  final String id;
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
  final String teamId;

  @override
  String toString() {
    return 'ApiEventModel(id: $id, title: $title, imagePath: $imagePath, text: $text, placeUrl: $placeUrl, time: $time, tags: $tags, teamId: $teamId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiEventModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.placeUrl, placeUrl) ||
                other.placeUrl == placeUrl) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imagePath, text,
      placeUrl, time, const DeepCollectionEquality().hash(_tags), teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiEventModelImplCopyWith<_$ApiEventModelImpl> get copyWith =>
      __$$ApiEventModelImplCopyWithImpl<_$ApiEventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiEventModelImplToJson(
      this,
    );
  }
}

abstract class _ApiEventModel implements ApiEventModel {
  const factory _ApiEventModel(
      {required final String id,
      required final String title,
      required final String imagePath,
      required final String text,
      required final String placeUrl,
      required final String time,
      required final List<String> tags,
      required final String teamId}) = _$ApiEventModelImpl;

  factory _ApiEventModel.fromJson(Map<String, dynamic> json) =
      _$ApiEventModelImpl.fromJson;

  @override
  String get id;
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
  String get teamId;
  @override
  @JsonKey(ignore: true)
  _$$ApiEventModelImplCopyWith<_$ApiEventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
