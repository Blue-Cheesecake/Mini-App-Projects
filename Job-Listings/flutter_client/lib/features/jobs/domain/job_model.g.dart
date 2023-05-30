// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobModel _$$_JobModelFromJson(Map<String, dynamic> json) => _$_JobModel(
      id: json['id'] as int,
      company: json['company'] as String,
      logo: json['logo'] as String,
      isNew: json['isNew'] as bool,
      featured: json['featured'] as bool,
      position: json['position'] as String,
      role: json['role'] as String,
      level: json['level'] as String,
      postedAt: json['postedAt'] as String,
      contract: json['contract'] as String,
      location: json['location'] as String,
      languages:
          (json['languages'] as List<dynamic>).map((e) => e as String).toList(),
      tools: (json['tools'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_JobModelToJson(_$_JobModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'logo': instance.logo,
      'isNew': instance.isNew,
      'featured': instance.featured,
      'position': instance.position,
      'role': instance.role,
      'level': instance.level,
      'postedAt': instance.postedAt,
      'contract': instance.contract,
      'location': instance.location,
      'languages': instance.languages,
      'tools': instance.tools,
    };
