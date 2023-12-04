// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_event_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiEventTeamModelImpl _$$ApiEventTeamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiEventTeamModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      capacity: json['capacity'] as int,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      teamId: json['teamId'] as String,
    );

Map<String, dynamic> _$$ApiEventTeamModelImplToJson(
        _$ApiEventTeamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'capacity': instance.capacity,
      'members': instance.members,
      'teamId': instance.teamId,
    };
