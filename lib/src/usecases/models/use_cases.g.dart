// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_cases.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UseCasesImpl _$$UseCasesImplFromJson(Map<String, dynamic> json) =>
    _$UseCasesImpl(
      cases: (json['cases'] as List<dynamic>)
          .map((e) => UseCase.fromJson(e as Map<String, dynamic>))
          .toList(),
      selected: (json['selected'] as num).toInt(),
    );

Map<String, dynamic> _$$UseCasesImplToJson(_$UseCasesImpl instance) =>
    <String, dynamic>{
      'cases': instance.cases,
      'selected': instance.selected,
    };

_$UseCaseImpl _$$UseCaseImplFromJson(Map<String, dynamic> json) =>
    _$UseCaseImpl(
      name: json['name'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$UseCaseImplToJson(_$UseCaseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'createdAt': instance.createdAt.toIso8601String(),
      'content': instance.content,
    };