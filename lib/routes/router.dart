import 'package:demos_app/routes/route_handler.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String splash = "/";
  static String home = "/home";
  static String auth = "/auth";
  static String create = "/create";
  static String search = "/search";
  static String poll = "/poll";
  static String user = "/user";
  static String genericPoll = "/genericpoll";

  static FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          return;
        });
    router.define(splash, handler: splashHandler);
    router.define(home, handler: homeHandler);
    router.define(search, handler: searchHandler);
    router.define(create, handler: createHandler, transitionType: TransitionType.cupertinoFullScreenDialog);
    router.define(auth, handler: authHandler, transitionType: TransitionType.cupertinoFullScreenDialog);
    router.define('$poll/:id', handler: poolHandler, transitionType: TransitionType.cupertino,);
    router.define('$user/:id', handler: userHandler, transitionType: TransitionType.cupertino);
    router.define(genericPoll, handler: genericPollHandler, transitionType: TransitionType.cupertino);
  }
}

