import admin = require('firebase-admin');
import * as functions from 'firebase-functions';

// Start writing Firebase Functions
// https://firebase.google.com/docs/functions/typescript
//

const keyCollectionUsers = 'users';
const keyCollectionRooms = 'rooms';
const keyCollectionMessages = `${keyCollectionRooms}/{roomId}/messages`;

export const helloWorld = functions.region('asia-northeast1')
.https.onRequest((request, response) => {
 functions.logger.info("Hello logs!", {structuredData: true});
 response.send("Hello from Firebase!");
});

// ------
// Users
// ------
const userDoc = `${keyCollectionUsers}/{userId}`;
// Create
export const onCreateUser = functions.region('asia-northeast1')
  .firestore.document(userDoc).onCreate((snap, context) => {
    const now = admin.firestore.FieldValue.serverTimestamp();

    // Write timestamps
    return snap.ref.set({
      createdAt: now,
      updatedAt: now,
      deletedAt: null,
    }, {merge: true});
});
// Update
export const onUpdateUser = functions.region('asia-northeast1')
  .firestore.document(userDoc).onUpdate((change, context) => {
    // Retrieve the current and previous value
    const data = change.after.data();
    const previousData = change.before.data();

    // We'll only update if the name & email has changed.
    // This is crucial to prevent infinite loops.
    if (data.email === previousData.email 
      && data.name === previousData.name) return null;

    const now = admin.firestore.FieldValue.serverTimestamp();

    // Write timestamps
    return change.after.ref.set({
      updatedAt: now,
    }, {merge: true});
});

// ------
// Room
// ------
const roomDoc = `${keyCollectionRooms}/{roomId}`;
// Create
export const onCreateRoom = functions.region('asia-northeast1')
  .firestore.document(roomDoc).onCreate((snap, context) => {
    const now = admin.firestore.FieldValue.serverTimestamp();

    // Write timestamps
    return snap.ref.set({
      createdAt: now,
      updatedAt: now,
      deletedAt: null,
    }, {merge: true});
});
// Update
export const onUpdateRoom = functions.region('asia-northeast1')
  .firestore.document(roomDoc).onUpdate((change, context) => {
    const now = admin.firestore.FieldValue.serverTimestamp();

    // Retrieve the current and previous value
    const data = change.after.data();
    const previousData = change.before.data();

    // We'll only update if the members & name has changed.
    // This is crucial to prevent infinite loops.
    if (JSON.stringify(data.members) === JSON.stringify(data.members) 
      && data.name === previousData.name) return null;


    // Write timestamps
    return change.after.ref.set({
      updatedAt: now,
    }, {merge: true});
});

// --------
// Message
// --------
const messageDoc = `${keyCollectionMessages}/{messageId}`;
// Create
export const onCreateMessage = functions.region('asia-northeast1')
  .firestore.document(messageDoc).onCreate((snap, context) => {
    const now = admin.firestore.FieldValue.serverTimestamp();

    // Write timestamps
    return snap.ref.set({
      createdAt: now,
      updatedAt: now,
      deletedAt: null,
    }, {merge: true});
});
// Update
export const onUpdateMessage = functions.region('asia-northeast1')
  .firestore.document(messageDoc).onUpdate((change, context) => {
    const now = admin.firestore.FieldValue.serverTimestamp();

    // Retrieve the current and previous value
    const data = change.after.data();
    const previousData = change.before.data();

    // We'll only update if the members & name has changed.
    // This is crucial to prevent infinite loops.
    if (data.message === previousData.message) 
      return null;


    // Write timestamps
    return change.after.ref.set({
      updatedAt: now,
    }, {merge: true});
});
