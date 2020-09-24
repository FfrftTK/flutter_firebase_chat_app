import 'package:chat_app/pages/pages.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

void setPageRoutes(Router router) {
  router
    ..define(
      PageHome.routeName,
      handler: _getSimpleTransitionHandler(page: PageHome()),
    )
    ..define(
      PageRoot.routeName,
      handler: _getSimpleTransitionHandler(page: PageRoot()),
    )
    ..define(
      PageSignUp.routeName,
      handler: _getSimpleTransitionHandler(page: PageSignUp()),
    )
    ..define(
      PageSignIn.routeName,
      handler: _getSimpleTransitionHandler(page: PageSignIn()),
    );
}

// Returns a handler that only returns page with no params
Handler _getSimpleTransitionHandler({@required Widget page}) {
  return Handler(handlerFunc: (context, params) => page);
}
