// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_team_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventTeamModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  String get teamId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventTeamModelCopyWith<EventTeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventTeamModelCopyWith<$Res> {
  factory $EventTeamModelCopyWith(
          EventTeamModel value, $Res Function(EventTeamModel) then) =
      _$EventTeamModelCopyWithImpl<$Res, EventTeamModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      int capacity,
      List<String> members,
      String teamId});
}

/// @nodoc
class _$EventTeamModelCopyWithImpl<$Res, $Val extends EventTeamModel>
    implements $EventTeamModelCopyWith<$Res> {
  _$EventTeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? capacity = null,
    Object? members = null,
    Object? teamId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      members: null == members
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventTeamModelImplCopyWith<$Res>
    implements $EventTeamModelCopyWith<$Res> {
  factory _$$EventTeamModelImplCopyWith(_$EventTeamModelImpl value,
          $Res Function(_$EventTeamModelImpl) then) =
      __$$EventTeamModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int capacity,
      List<String> members,
      String teamId});
}

/// @nodoc
class __$$EventTeamModelImplCopyWithImpl<$Res>
    extends _$EventTeamModelCopyWithImpl<$Res, _$EventTeamModelImpl>
    implements _$$EventTeamModelImplCopyWith<$Res> {
  __$$EventTeamModelImplCopyWithImpl(
      _$EventTeamModelImpl _value, $Res Function(_$EventTeamModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? capacity = null,
    Object? members = null,
    Object? teamId = null,
  }) {
    return _then(_$EventTeamModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      teamId: null == teamId
          ? _value.teamId
          : teamId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventTeamModelImpl implements _EventTeamModel {
  const _$EventTeamModelImpl(
      {required this.id,
      required this.name,
      required this.capacity,
      required final List<String> members,
      required this.teamId})
      : _members = members;

  @override
  final String id;
  @override
  final String name;
  @override
  final int capacity;
  final List<String> _members;
  @override
  List<String> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final String teamId;

  @override
  String toString() {
    return 'EventTeamModel(id: $id, name: $name, capacity: $capacity, members: $members, teamId: $teamId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventTeamModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.teamId, teamId) || other.teamId == teamId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, capacity,
      const DeepCollectionEquality().hash(_members), teamId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventTeamModelImplCopyWith<_$EventTeamModelImpl> get copyWith =>
      __$$EventTeamModelImplCopyWithImpl<_$EventTeamModelImpl>(
          this, _$identity);
}

abstract class _EventTeamModel implements EventTeamModel {
  const factory _EventTeamModel(
      {required final String id,
      required final String name,
      required final int capacity,
      required final List<String> members,
      required final String teamId}) = _$EventTeamModelImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  int get capacity;
  @override
  List<String> get members;
  @override
  String get teamId;
  @override
  @JsonKey(ignore: true)
  _$$EventTeamModelImplCopyWith<_$EventTeamModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
