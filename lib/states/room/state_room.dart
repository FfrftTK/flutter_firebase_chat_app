import 'package:chat_app/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_room.freezed.dart';

@freezed
abstract class RoomState with _$RoomState {
  const factory RoomState({
    @Default([]) List<EAppMessage> messages,
    @Default([]) List<EAppUser> users,
  }) = _RoomState;
}
