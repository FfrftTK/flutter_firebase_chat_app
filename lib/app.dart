import 'package:chat_app/pages/pages.dart';
import 'package:chat_app/router.dart';
import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: getPages,
      theme: buildTheme(),
      title: '',
      home: const PageRoot(),
    );
  }
}
