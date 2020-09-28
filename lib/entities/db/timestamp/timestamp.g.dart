// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EDBTimestamp _$_$_EDBTimestampFromJson(Map<String, dynamic> json) {
  return _$_EDBTimestamp(
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    deletedAt: json['deletedAt'] == null
        ? null
        : DateTime.parse(json['deletedAt'] as String),
  );
}

Map<String, dynamic> _$_$_EDBTimestampToJson(_$_EDBTimestamp instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };
