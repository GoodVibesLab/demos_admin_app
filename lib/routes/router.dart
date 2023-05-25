import 'package:demos_app/routes/route_handler.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String root = "/";
  static String auth = "/auth";

  static FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
          return;
        });
    router.define(root, handler: rootHandler);
    router.define(auth, handler: authHandler, transitionType: TransitionType.fadeIn);
  }
}

