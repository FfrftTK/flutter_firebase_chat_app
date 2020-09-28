// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EAppMessage _$_$_EAppMessageFromJson(Map<String, dynamic> json) {
  return _$_EAppMessage(
    posterId: json['posterId'] as String,
    message: json['message'] as String,
    postedAt: json['postedAt'] == null
        ? null
        : DateTime.parse(json['postedAt'] as String),
  );
}

Map<String, dynamic> _$_$_EAppMessageToJson(_$_EAppMessage instance) =>
    <String, dynamic>{
      'posterId': instance.posterId,
      'message': instance.message,
      'postedAt': instance.postedAt?.toIso8601String(),
    };
