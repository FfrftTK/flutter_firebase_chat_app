// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EAppRoom _$_$_EAppRoomFromJson(Map<String, dynamic> json) {
  return _$_EAppRoom(
    name: json['name'] as String,
    members: (json['members'] as List)?.map((e) => e as String)?.toList(),
    roomId: json['roomId'] as String,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$_$_EAppRoomToJson(_$_EAppRoom instance) =>
    <String, dynamic>{
      'name': instance.name,
      'members': instance.members,
      'roomId': instance.roomId,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
