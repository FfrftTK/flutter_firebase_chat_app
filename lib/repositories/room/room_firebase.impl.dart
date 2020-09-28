import 'dart:async';

import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'room.dart';

class RoomRepositoryWithFirebase extends RoomRepository {
  RoomRepositoryWithFirebase(this.authClient, this.storeClient) : super();

  final FirebaseAuthClient authClient;
  final FirestoreClient storeClient;

  @override
  Future<void> createRoom(String roomName, EAppUser user) async {
    final reqParams = EDBRoom(
      name: roomName,
      members: [user.id],
    ).toJson();

    return storeClient.addDocument(
      storeClient.firestoreInstance
          .collection(FirestoreClient.roomsCollectionKey),
      reqParams,
    );
  }

  @override
  Future<List<EAppRoom>> fetchRooms(EAppUser user) async {
    // Get rooms to which the user belongs
    final query = storeClient.firestoreInstance
        .collection(FirestoreClient.roomsCollectionKey)
        .where('members', arrayContains: user.id);

    final rooms = await storeClient.execQuery(query);

    return rooms.docs.map<EAppRoom>((e) {
      final data = e.data();
      return EAppRoom(
        name: data['name'],
        members: data['members'].cast<String>(),
        roomId: e.id,
        // Timestamp fields is assigned by Cloud Functions that hooks
        // on Documents' Create & Update so this field is null at the
        // time a room is created. It is needed to assign default time
        // when those rooms are fetched on App.
        updatedAt: data['updatedAt']?.toDate() ?? DateTime.now(),
      );
    }).toList();
  }

  @override
  Future<void> postMessage(String message, EAppRoom room, EAppUser user) async {
    final messagesCollection = storeClient.firestoreInstance
        .collection(FirestoreClient.roomsCollectionKey)
        .doc(room.roomId)
        .collection(FirestoreClient.messagesCollectionKey);
    storeClient.addDocument(
      messagesCollection,
      EDBMessage(posterId: user.id, message: message).toJson(),
    );
  }

  @override
  Future<Stream<List<EAppMessage>>> fetchMessagesStream(EAppRoom room) async {
    final messagesCollection = storeClient.firestoreInstance
        .collection(FirestoreClient.roomsCollectionKey)
        .doc(room.roomId)
        .collection(FirestoreClient.messagesCollectionKey);
    final messagesStream =
        await storeClient.getCollectionStream(messagesCollection);

    return messagesStream.map((e) {
      final x = e.docs.map((e) {
        final data = e.data();
        return EAppMessage(
          posterId: data['posterId'],
          message: data['message'],
          // Timestamp fields is assigned by Cloud Functions that hooks
          // on Documents' Create & Update so this field is null at the
          // time a room is created. It is needed to assign default time
          // when those rooms are fetched on App.
          postedAt: data['createdAt']?.toDate() ?? DateTime.now(),
        );
      }).toList()
        ..sort((a, b) => b.postedAt.compareTo(a.postedAt));
      return x;
    });
  }

  @override
  Future<List<EAppUser>> fetchRoomMembers(EAppRoom room) async {
    // Get rooms to which the user belongs
    final query = storeClient.firestoreInstance
        .collection(FirestoreClient.usersCollectionKey)
        .where(FieldPath.documentId, whereIn: room.members);
    final members = await storeClient.execQuery(query);

    return members.docs.map<EAppUser>((e) {
      final data = e.data();
      return EAppUser(
        id: e.id,
        name: data['name'],
        email: data['email'],
      );
    }).toList();
  }
}
