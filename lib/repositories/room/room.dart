import 'package:chat_app/entities/entities.dart';

abstract class RoomRepository {
  RoomRepository() {}

  // Room related
  Future<void> createRoom(String roomName, EAppUser user);
  Future<List<EAppRoom>> fetchRooms(EAppUser user);
  Future<List<EAppUser>> fetchRoomMembers(EAppRoom room);

  // Message related
  Future<void> postMessage(String message, EAppRoom room, EAppUser user);
  Future<Stream<List<EAppMessage>>> fetchMessagesStream(EAppRoom room);
}
