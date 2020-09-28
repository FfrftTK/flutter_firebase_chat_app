import 'package:chat_app/entities/entities.dart';
import 'package:chat_app/exceptions/exceptions.dart';
import 'package:chat_app/exceptions/server_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreClient {
  factory FirestoreClient(FirebaseFirestore firestoreInstance) {
    return _instance ?? FirestoreClient._internal(firestoreInstance);
  }

  // Singleton
  FirestoreClient._internal(this.firestoreInstance);

  // Collection keys
  static const String usersCollectionKey = 'users';
  static const String roomsCollectionKey = 'rooms';
  static const String messagesCollectionKey = 'messages';

  static FirestoreClient _instance;
  final FirebaseFirestore firestoreInstance;

  // Implement own Method
  Future<dynamic> onRequest(
      dynamic documentReference, Map<String, dynamic> data) async {}
  Future<dynamic> onResponse(dynamic response) async {}
  Future<dynamic> onError(Exception e) async {}

  /**
  * Data creating related
  * */

  // Set document
  Future<Transaction> setDocument(
      DocumentReference documentReference, Map<String, dynamic> data) async {
    try {
      return await firestoreInstance.runTransaction((transaction) async {
        return await transaction.set(documentReference, data);
      });
    } on Exception catch (e) {
      throw ServerException(AppError(description: e.toString()));
    }
  }

  // Add document
  Future<DocumentReference> addDocument(CollectionReference collectionReference,
      Map<String, dynamic> data) async {
    try {
      return await collectionReference.add(data);
    } on Exception catch (e) {
      throw ServerException(AppError(description: e.toString()));
    }
  }

  /**
  * Data fetching related
  * */

  // Get document
  Future<Map<String, dynamic>> getDocument(
      DocumentReference documentReference) async {
    try {
      final doc = await documentReference.get();
      return doc.data();
    } on Exception catch (e) {
      throw ServerException(AppError(description: e.toString()));
    }
  }

  // Get collection
  Future<QuerySnapshot> getCollection(
      CollectionReference collectionReference) async {
    try {
      return await collectionReference.get();
    } on Exception catch (e) {
      throw ServerException(AppError(description: e.toString()));
    }
  }

  // Get collectionStream
  Future<Stream<QuerySnapshot>> getCollectionStream(
      CollectionReference collectionReference) async {
    try {
      return await collectionReference.snapshots();
    } on Exception catch (e) {
      throw ServerException(AppError(description: e.toString()));
    }
  }

  // Exec query
  Future<QuerySnapshot> execQuery(Query query, [GetOptions getOptions]) async {
    try {
      return await query.get();
    } on Exception catch (e) {
      throw ServerException(AppError(description: e.toString()));
    }
  }

  DocumentReference fixUserIdStringToDocRef(String userId) {
    return firestoreInstance.collection(usersCollectionKey).doc(userId);
  }

  DocumentReference fixRoomIdStringToDocRef(String roomId) {
    return firestoreInstance.collection(roomsCollectionKey).doc(roomId);
  }
}

// Firebase data extensions
extension FireBaseData on Map {
  void addTimestamp(DBOperation operation) {
    switch (operation) {
      case DBOperation.create:
        addAll(EDBTimestamp.createNow().toJson());
        break;
      case DBOperation.update:
        addAll(EDBTimestamp.updateNow().toJson());
        break;
      case DBOperation.delete:
        addAll(EDBTimestamp.deleteNow().toJson());
        break;
    }
  }
}

enum DBOperation {
  create,
  update,
  delete,
}
