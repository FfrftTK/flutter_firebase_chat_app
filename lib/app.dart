import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
      title: '',
      home: PageRoot(),
    );
  }
}
