import 'package:chat_app/entities/entities.dart';

abstract class UserRepository {
  UserRepository() {}

  Future<void> addUserData(EAppUser user);
  Future<EAppUser> fetchCurrentUser();
}
