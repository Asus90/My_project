// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model12.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model12 _$Model12FromJson(Map<String, dynamic> json) => Model12(
      id: json['id'] as int?,
      name: json['name'] as String?,
      tag: json['tag'] as String?,
      color: json['color'] as String?,
      criteria: (json['criteria'] as List<dynamic>?)
          ?.map((e) => Criterion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Model12ToJson(Model12 instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'tag': instance.tag,
      'color': instance.color,
      'criteria': instance.criteria,
    };
