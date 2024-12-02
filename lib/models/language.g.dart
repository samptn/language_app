// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      name: json['name'] as String,
      startIndex: (json['startIndex'] as num).toInt(),
      startHex: json['startHex'] as String,
      size: (json['size'] as num).toInt(),
      script: json['script'] as String,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'name': instance.name,
      'startIndex': instance.startIndex,
      'startHex': instance.startHex,
      'size': instance.size,
      'script': instance.script,
    };
