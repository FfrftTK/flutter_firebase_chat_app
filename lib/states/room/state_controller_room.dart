import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/repositories/repositories.dart';
import 'package:chat_app/states/states.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:state_notifier/state_notifier.dart';

import 'state_room.dart';

export 'state_room.dart';

class RoomStateController<T extends RoomRepository>
    extends StateNotifier<RoomState> with LocatorMixin {
  RoomStateController(this.room) : super(const RoomState()) {}
  final EAppRoom room;

  T get roomRepository => read();
  UserState get userState => read();
  ReusableDialogs get reusableDialog => read();

  @override
  void initState() {
    startSubscribeMessages();
    _fetchRoomMembers();
  }

  // Message related
  Future<void> postMessage(String message) async {
    roomRepository.postMessage(message, room, userState.currentUser);
  }

  Future<void> startSubscribeMessages() async {
    final stream = await roomRepository.fetchMessagesStream(room);
    stream.listen(_onMessageUpdated);
  }

  // Message hooks
  Future<void> _onMessageUpdated(List<EAppMessage> messages) async {
    if (mounted) {
      state = state.copyWith(messages: messages);
    }
  }

  // User related
  Future<void> _fetchRoomMembers() async {
    state = state.copyWith(users: await roomRepository.fetchRoomMembers(room));
  }
}
