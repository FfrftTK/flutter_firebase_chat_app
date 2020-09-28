import 'package:chat_app/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_home.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<EAppRoom> rooms,
    // TODO(FfrftTK): Implement
    @Default([]) List<EAppUser> friends,
  }) = _HomeState;
}
