import 'package:chat_app/repositories/repositories.dart';
import 'package:chat_app/states/states.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:chat_app/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:state_notifier/state_notifier.dart';

import 'state_home.dart';

export 'state_home.dart';

class HomeStateController<T extends RoomRepository>
    extends StateNotifier<HomeState> with LocatorMixin {
  HomeStateController() : super(const HomeState()) {}

  T get roomRepository => read();
  UserState get userState => read();
  ReusableDialogs get reusableDialog => read();

  @override
  void initState() {
    fetchRooms();
  }

  Future<void> updateHome() async {
    fetchRooms();
  }

  /**
  * Room related
  * */

  Future<void> createRoom() async {
    Get.dialog(SimplePostDialogForm(
      onValidationPassed: (input) {
        // Register new room
        roomRepository.createRoom(input, userState.currentUser);
        Get.back();

        // Fetch new room list
        updateHome();
      },
      onValidationFailed: (_) {},
      titleText: 'Create new chat room',
      contentText: 'Input room name',
      submitText: 'Create',
      validator: (input) {
        return input.length > 0 ? null : 'Room name is required.';
      },
    ));
  }

  Future<void> fetchRooms() async {
    state = state.copyWith(
        rooms: await roomRepository.fetchRooms(userState.currentUser));
  }
}
