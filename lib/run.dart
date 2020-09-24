import 'package:chat_app/router.dart';
import 'package:chat_app/states/states.dart';
import 'package:chat_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluro/fluro.dart';
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
  // initialize firebase
  await Firebase.initializeApp();

  // set app page routes
  final router = Router();
  setPageRoutes(router);

  runApp(
//    const App(),
    MultiProvider(
      providers: [
        // router
        Provider(create: (context) => router),
        // utils
        Provider(create: (context) => const ReusableDialogs()),
        Provider(
            create: (context) => FirebaseAuthClient(FirebaseAuth.instance)),
        // states
        StateNotifierProvider<HomeStateController, HomeState>(
          create: (_) => HomeStateController(),
        ),
        StateNotifierProvider<UserStateController, UserState>(
          create: (_) => UserStateController(),
        ),
      ],
      child: const App(),
    ),
  );
}
