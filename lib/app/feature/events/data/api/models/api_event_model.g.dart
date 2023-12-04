// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiEventModelImpl _$$ApiEventModelImplFromJson(Map<String, dynamic> json) =>
    _$ApiEventModelImpl(
      id: json['id'] as String,
      idCreator: json['idCreator'] as String,
      title: json['title'] as String,
      imagePath: json['imagePath'] as String,
      text: json['text'] as String,
      placeUrl: json['placeUrl'] as String,
      time: json['time'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ApiEventModelImplToJson(_$ApiEventModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'idCreator': instance.idCreator,
      'title': instance.title,
      'imagePath': instance.imagePath,
      'text': instance.text,
      'placeUrl': instance.placeUrl,
      'time': instance.time,
      'tags': instance.tags,
    };
