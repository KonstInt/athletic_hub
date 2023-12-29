// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_bloc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterModelImpl _$$FilterModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      filters: (json['filters'] as List<dynamic>)
          .map((e) => FilterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilterModelImplToJson(_$FilterModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'filters': instance.filters,
    };
