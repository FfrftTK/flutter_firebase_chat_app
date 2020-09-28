import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/utils/utils.dart';

import 'user.dart';

class UserRepositoryWithFirebase extends UserRepository {
  UserRepositoryWithFirebase(this.authClient, this.storeClient) : super();

  final FirebaseAuthClient authClient;
  final FirestoreClient storeClient;

  @override
  Future<EAppUser> fetchCurrentUser() async {
    // Not signed in
    if (authClient.currentUser == null) {
      return null;
    }

    final registeredUserData = await storeClient.getDocument(storeClient
        .firestoreInstance
        .collection(FirestoreClient.usersCollectionKey)
        .doc(authClient.currentUser.uid));

    // If user's data is not registered in DB
    if (registeredUserData == null) {
      return EAppUser(
        id: authClient.currentUser.uid,
        email: authClient.currentUser.email,
      );
    }

    return EAppUser.fromJson(registeredUserData);
  }

  @override
  Future<void> addUserData(EAppUser user) {
    final reqParams = EDBUser(
      id: user.id,
      name: user.name,
      email: user.email,
    ).toJson();

    return storeClient.setDocument(
        storeClient.firestoreInstance
            .collection(FirestoreClient.usersCollectionKey)
            .doc(user.id),
        reqParams);
  }
}
