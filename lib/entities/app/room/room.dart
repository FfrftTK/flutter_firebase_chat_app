import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room.freezed.dart';
part 'room.g.dart';

@freezed
abstract class EAppRoom with _$EAppRoom {
  factory EAppRoom({
    @required String name,
    @required List<String> members,
    @required String roomId,
    @required DateTime updatedAt,
  }) = _EAppRoom;

  factory EAppRoom.fromJson(Map<String, dynamic> json) =>
      _$EAppRoomFromJson(json);
}
