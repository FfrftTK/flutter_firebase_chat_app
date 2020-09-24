import 'package:state_notifier/state_notifier.dart';

import 'state_home.dart';

export 'state_home.dart';

class HomeStateController extends StateNotifier<HomeState> with LocatorMixin {
  HomeStateController() : super(const HomeState()) {}
}
