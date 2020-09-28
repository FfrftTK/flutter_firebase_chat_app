import 'package:chat_app/repositories/repositories.dart';
import 'package:chat_app/states/states.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'app.dart';

enum Environment {
  develop,
  staging,
  production,
}

Future run({@required Environment environment}) async {
  switch (environment) {
    case Environment.develop:
      await DotEnv().load('.env.dev');
      break;
    case Environment.staging:
      await DotEnv().load('.env.staging');
      break;
    case Environment.production:
      await DotEnv().load('.env');
      break;
  }
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize firebase
  await Firebase.initializeApp();

  runApp(
//    const App(),
    MultiProvider(
      providers: [
        // Utils
        Provider(create: (context) => const ReusableDialogs()),

        // Repositories
        Provider(
            create: (context) => AuthenticationRepositoryWithFirebase(
                FirebaseAuthClient(FirebaseAuth.instance))),
        Provider(
            create: (context) => UserRepositoryWithFirebase(
                FirebaseAuthClient(FirebaseAuth.instance),
                FirestoreClient(FirebaseFirestore.instance))),
        Provider(
            create: (context) => RoomRepositoryWithFirebase(
                FirebaseAuthClient(FirebaseAuth.instance),
                FirestoreClient(FirebaseFirestore.instance))),

        // Global States
        StateNotifierProvider<UserStateController, UserState>(
          create: (_) => UserStateController<
              AuthenticationRepositoryWithFirebase,
              UserRepositoryWithFirebase>(),
        ),
        StateNotifierProvider<HomeStateController, HomeState>(
          create: (_) => HomeStateController<RoomRepositoryWithFirebase>(),
        ),
      ],
      child: const App(),
    ),
  );
}
