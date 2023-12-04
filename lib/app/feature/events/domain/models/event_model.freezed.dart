// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get placeUrl => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String get teamId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String imagePath,
      String text,
      String placeUrl,
      DateTime time,
      List<String> tags,
      String teamId});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

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
              as DateTime,
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
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String imagePath,
      String text,
      String placeUrl,
      DateTime time,
      List<String> tags,
      String teamId});
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
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
    return _then(_$EventModelImpl(
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
              as DateTime,
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

class _$EventModelImpl implements _EventModel {
  const _$EventModelImpl(
      {required this.id,
      required this.title,
      required this.imagePath,
      required this.text,
      required this.placeUrl,
      required this.time,
      required final List<String> tags,
      required this.teamId})
      : _tags = tags;

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
  final DateTime time;
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
    return 'EventModel(id: $id, title: $title, imagePath: $imagePath, text: $text, placeUrl: $placeUrl, time: $time, tags: $tags, teamId: $teamId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, title, imagePath, text,
      placeUrl, time, const DeepCollectionEquality().hash(_tags), teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);
}

abstract class _EventModel implements EventModel {
  const factory _EventModel(
      {required final String id,
      required final String title,
      required final String imagePath,
      required final String text,
      required final String placeUrl,
      required final DateTime time,
      required final List<String> tags,
      required final String teamId}) = _$EventModelImpl;

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
  DateTime get time;
  @override
  List<String> get tags;
  @override
  String get teamId;
  @override
  @JsonKey(ignore: true)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
