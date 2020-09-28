// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EDBRoom _$_$_EDBRoomFromJson(Map<String, dynamic> json) {
  return _$_EDBRoom(
    name: json['name'] as String,
    members: (json['members'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_EDBRoomToJson(_$_EDBRoom instance) =>
    <String, dynamic>{
      'name': instance.name,
      'members': instance.members,
    };
